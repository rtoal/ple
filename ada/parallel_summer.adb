with Ada.Text_IO, Ada.Assertions;
use Ada.Text_IO, Ada.Assertions;

procedure Parallel_Summer is

   type Numbers is array (Integer range <>) of Integer;
   NUM_TASKS : constant := 10;

   function Sum (A : Numbers) return Integer is
      --  Where each task will deposit its result.
      Results : array (1 .. NUM_TASKS) of Integer := [others => 0];

      --  Used for the small array case, and for summing up the results.
      Total : Integer := 0;
   begin
      declare

         --  Each task receives a slice range and task index for its result.
         task type Sum_Slice (First, Last, Task_Index : Integer);
         task body Sum_Slice is
            Task_Sum : Integer := 0;
         begin
            for I in First .. Last loop
               Task_Sum := Task_Sum + A (I);
            end loop;
            Results (Task_Index) := Task_Sum;
         end Sum_Slice;

         Tasks : array (1 .. NUM_TASKS) of access Sum_Slice;

      begin
         if A'Length < 100 then
            return A'Reduce("+", 0);
         end if;

         for I in 1 .. NUM_TASKS loop
            declare
               Slice_Size : constant Integer := A'Length / NUM_TASKS;
               First      : constant Integer := A'First + (I - 1) * Slice_Size;
               Last       : constant Integer := A'First + I * Slice_Size - 1;
            begin
               Tasks (I) := new Sum_Slice (First, Last, I);
            end;
         end loop;

         --  Keep tasks alive by referencing them (suppresses warning)
         pragma Unreferenced (Tasks);
      end;

      --  All tasks are guaranteed to finish before we get here.
      return Results'Reduce ("+", 0);
   end Sum;

begin
   declare
      Unconventional : constant Numbers (103 .. 110) := [9, 9, 3, others => 6];
      Empty : constant Numbers (1 .. 0) := [];
   begin
      Assert (Sum (Unconventional) = 51);
      Assert (Sum ([1, 2, 3]) = 6);
      Assert (Sum ([for I in 1 .. 10 => I]) = 55);
      Assert (Sum ([for I in 1 .. 20000 => 7]) = 140000);
      Assert (Sum (Empty) = 0);
      Put_Line ("All tests passed");
   end;
end Parallel_Summer;
