with Ada.Text_IO;
use Ada.Text_IO;

procedure Parallel_Summer is

   type Vector is array (Integer range <>) of Integer;
   NUM_TASKS : constant Integer := 10;

   function Sum (A : Vector) return Integer is
      --  Where each task will deposit its result.
      Results : array (1 .. NUM_TASKS) of access Integer;

      --  Used for the small array case, and for summing up the results.
      Total : Integer := 0;
   begin
      declare

         --  Each tasks receives a variable to deposit its result.
         task type Sum_Slice (First, Last : Integer; Sum : access Integer);
         task body Sum_Slice is
         begin
            for I in First .. Last loop
               Sum.all := Sum.all + A (I);
            end loop;
         end Sum_Slice;

         Tasks : array (1 .. NUM_TASKS) of access Sum_Slice;

      begin
         if A'Length < 100 then
            for I in A'Range loop
               Total := Total + A (I);
            end loop;
            return Total;
         end if;

         for I in 1 .. NUM_TASKS loop
            declare
               First : Integer := (I - 1) * (A'Length / NUM_TASKS) + 1;
               Last  : Integer := I * (A'Length / NUM_TASKS);
            begin
               Results (I) := new Integer'(0);
               Tasks (I) := new Sum_Slice (First, Last, Results (I));
            end;
         end loop;
      end;

      --  All tasks are guaranteed to finish before we get here.
      for I in Results'Range loop
         Total := Total + Results (I).all;
      end loop;
      return Total;
   end Sum;

begin
   declare
      Assertion_Error : exception;
      V1 : Vector (103 .. 110) := (9, 9, 3, others => 6);
      V2 : Vector (1 .. 3) := (1, 2, 3);
      V3 : Vector (1 .. 10) := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
      V4 : Vector (1 .. 20000) := (others => 7);
      V5 : Vector (1 .. 0);
   begin
      if Sum (V1) /= 51 then raise Assertion_Error; end if;
      if Sum (V2) /= 6 then raise Assertion_Error; end if;
      if Sum (V3) /= 55 then raise Assertion_Error; end if;
      if Sum (V4) /= 140000 then raise Assertion_Error; end if;
      if Sum (V5) /= 0 then raise Assertion_Error; end if;
      Put_Line ("All tests passed");
   end;
end Parallel_Summer;
