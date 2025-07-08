with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Antiparallel_Clock_Hands is
   T, H, M, S : Integer;

   procedure Show (N : Integer) is
   begin
      if N < 10 then
         Put ("0");
      end if;
      Put (N, 0);
   end Show;

begin
   for I in 0 .. 10 loop
      T := (43200 * I + 21600) / 11;
      H := T / 3600;
      M := (T / 60) mod 60;
      S := T mod 60;
      H := (if H = 0 then 12 else H);
      Show (H); Put (":"); Show (M); Put (":"); Show (S);
      New_Line;
   end loop;
end Antiparallel_Clock_Hands;
