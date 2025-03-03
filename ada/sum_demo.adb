------------------------------------------------------------------------------
-- sum_demo.adb
--
-- This program demonstrates a function to compute the sum of an array by
-- summing each half of the array concurrently.  We have a task type and
-- create multiple tasks, each parameterized a little differently.  Tasks
-- in Ada can directly access variables in surrounding scopes.
------------------------------------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

procedure Sum_Demo is

  type Vector is array (Integer range <>) of Integer;

  function Sum (A: Vector) return Integer is
    First_Sum  : aliased Integer := 0;
    Second_Sum : aliased Integer := 0;
  begin
    declare
      task type Sum_Slice(First: Integer; Last: Integer; Sum: access Integer);

      task body Sum_Slice is
      begin
        for I in First..Last loop
          Sum.all := Sum.all + A(I);
        end loop;
      end Sum_Slice;

      Mid: constant Integer := (A'First + A'Last) / 2;
      First_Half_Task: Sum_Slice(A'First, Mid, First_Sum'Access);
      Second_Half_Task: Sum_Slice(Mid + 1, A'Last, Second_Sum'Access);

    begin
      null;
    end;

    -- Both tasks are guaranteed to finish before we get here.
    return First_Sum + Second_Sum;
  end Sum;

begin
  declare
    Assertion_Error: exception;
    U: Vector(103..110) := (9,9,3, others => 6);
    V: Vector(1..19) := (3,6,1,9,8,4,5,7,6,4,3,4,5,6,7,8,1,0,8);
    W: Vector(0..9) := (1,2,3,4,5,6,7,8,9,10);
    X: Vector(1..20000) := (others => 7);
    Y: Vector(1..0);
  begin
    if Sum(U) /= 51 then raise Assertion_Error; end if;
    if Sum(V) /= 95 then raise Assertion_Error; end if;
    if Sum(W) /= 55 then raise Assertion_Error; end if;
    if Sum(X) /= 140000 then raise Assertion_Error; end if;
    if Sum(Y) /= 0 then raise Assertion_Error; end if;
    Put_Line("All tests passed");
  end;
end Sum_Demo;
