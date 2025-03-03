------------------------------------------------------------------------------
-- sieve.adb
--
-- A simple concurrent solution to the problem of finding prime numbers. Here
-- the user enters on the command line
--
--   sieve <n>
--
-- and the program writes out all the prime numbers up to and including n.
-- The program works by successively sending each number in 3..n through a list
-- of tasks;  each task in the list corresponds to a prime number. Initially
-- the list is empty. As a number goes through the list, each task checks to
-- see if the prime number it represents evenly divides the candidate number.
-- If it does, the number is composite and its journey through the list is
-- over. If it does not, the number continues going through the list. If a
-- number passes through the whole list, it is prime, and a new task
-- corresponding to this number is allocated at the end of the list.
------------------------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Command_Line;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Command_Line;

procedure Sieve is

  -- A Filter is a task corresponding to a particular value Divisor which
  -- when asked to check whether a value N is divisible by Divisor passes
  -- it along if is does not.

  task type Filter (Divisor: Natural) is
    entry Check_If_Divisible (N: Natural);
  end Filter;

  -- We need an access type so that tasks can be allocated dynamically.

  type Filter_Link is access Filter;

  -- This function looks unnecessary but it really is necessary. You
  -- might think that in the body of a Filter task you could just write
  -- "new Filter" but there is some stupid rule about the task type name
  -- in the task body referring to the currently executing task object
  -- of that type (so, like, it could abort itself if it had to.)

  function New_Filter (D: Natural) return Filter_Link is
  begin
    return new Filter(D);
  end New_Filter;

  task body Filter is
    Test: Natural;                               -- value being tested
    Next: Filter_Link;                           -- pointer to next prime task
  begin
    Put (Divisor, Width => 8);                   -- Divisor is prime; write it
    loop
      select
        accept Check_If_Divisible (N: Natural) do
          Test := N;
        end Check_If_Divisible;
        if Test rem Divisor /= 0 then            -- not divisible; maybe prime
          if Next /= null then                   -- if there are more divisors
            Next.Check_If_Divisible(Test);       -- pass it to next filter
          else                                   -- otherwise
            Next := New_Filter(Test);            -- it is prime
          end if;
        end if;
      or
        terminate;
      end select;
    end loop;
  exception
    when others => Put ("[Filter" & Natural'Image(Divisor) & " failed]");
  end Filter;

begin
  if Natural'Value(Argument(1)) < 2 then
    return;
  end if;
  declare
    First_Filter: Filter_Link := New_Filter(2);
  begin
    for I in 2 .. Natural'Value(Argument(1)) loop
      First_Filter.Check_If_Divisible(I);
    end loop;
  end;
exception
  when Tasking_Error => Put_Line ("[Entire process chain failed]");
  when others => Put_Line ("This program requires exactly one argument");
end Sieve;
