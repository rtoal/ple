with Ada.Text_IO; use Ada.Text_IO;

procedure Task_Demo is

  task type Worker is
    entry Square(X: Integer);
    entry Ping;
  end Worker;

  task body Worker is
    Y: Integer;
  begin
    loop
      select
        accept Square(X: Integer) do Y := X; end;
        Put_Line(Integer'Image(Y) & "^2 = " & Integer'Image(Y * Y));
      or
        accept Ping;
        Put("....");
      or
        terminate;
      end select;
    end loop;
  end Worker;

  Workers: array(0 .. 6) of Worker;

begin
  for I in Integer range 1..100 loop
    if I mod 2 = 0 then
      Workers(I rem 7).Square(I);
    else
      Workers(I rem 7).Ping;
    end if;
  end loop;
end Task_Demo;
