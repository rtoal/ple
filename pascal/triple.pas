uses sysutils;

var
  n, a, b, c : integer;

Operator ** (num1 : smallint; num2 : shortint) exp : smallint;
begin
  exp := 1;
  for n := 1 to num2 do
    exp := exp * num1;
end;

begin
  for c := 1 to 40 do
  begin
    for b := 1 to c do
    begin
      for a := 1 to b do
      begin
        if a ** 2 + b ** 2 = c ** 2 then 
          WriteLn(Format('%d, %d, %d', [a, b, c]));
      end;
    end;
  end;
end.