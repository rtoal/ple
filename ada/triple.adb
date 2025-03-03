with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Triple is
begin
  for C in 1 .. 40 loop
    for B in 1 .. C - 1  loop
      for A in 1 .. B - 1 loop
        if A ** 2 + B ** 2 = C ** 2 then
          Put(A, 0); Put(", "); Put(B, 0); Put(", "); Put(C, 0); New_Line;
        end if;
      end loop;
    end loop;
  end loop;
end Triple;
