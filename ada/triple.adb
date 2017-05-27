with Ada.Text_IO;
use Ada.Text_IO;

procedure Triple is
begin
  for C in 1 .. 40 loop
    for B in 1 .. C loop
      for A in 1 .. B loop
        if A ** 2 + B ** 2 = C ** 2 then
          Put_Line (Integer'Image(A) & ", " & Integer'Image(B) & ", " & Integer'Image(C));
        end if;
      end loop;
    end loop;
  end loop;
end Triple;
