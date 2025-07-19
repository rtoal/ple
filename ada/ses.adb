with Ada.Text_IO, Ada.Assertions;
use Ada.Text_IO, Ada.Assertions;

procedure Ses is

   type Integer_Array is array (Positive range <>) of Integer;

   function Sum_Of_Even_Squares (A : Integer_Array) return Integer is
   begin
      return [for X of A when X mod 2 = 0 => X * X]'Reduce ("+", 0);
   end Sum_Of_Even_Squares;

begin
   Assert (Sum_Of_Even_Squares ([1]) = 0);
   Assert (Sum_Of_Even_Squares ([1, 2]) = 4);
   Assert (Sum_Of_Even_Squares ([1, 2, 3]) = 4);
   Assert (Sum_Of_Even_Squares ([1, 2, 3, 4]) = 20);
   Assert (Sum_Of_Even_Squares ([for I in 1 .. 10 => I]) = 220);
   Assert (Sum_Of_Even_Squares ([for I in 1 .. 100 => I]) = 171700);
   Put_Line ("All tests passed");
end Ses;
