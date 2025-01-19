uses sysutils;

var
  i, t, h, m, s : longint;
begin
  for i := 0 to 10 do
  begin
    t := trunc ((i + 0.5) * 43200 / 11);
    h := trunc (t / 3600);
    m := (trunc (t / 60)) mod 60;
    s := t mod 60;
    if h = 0 then h := 12;
    WriteLn(Format('%0.02d:%0.02d:%0.02d', [h, m, s]));
  end;
end.