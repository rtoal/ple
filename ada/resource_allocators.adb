------------------------------------------------------------------------------
-- resource_allocators.adb
--
-- Implementation of the Resource_Allocators package.
------------------------------------------------------------------------------

package body Resource_Allocators is

   protected body Insecure_Controller is

      entry Allocate (K: out Key) when not Allocated is
      begin
         Current_Key.Value := Current_Key.Value + 1;
         Allocated := True;
         K := Current_Key;
      end Allocate;

      procedure Free (K: in out Key) is
      begin
         if K /= Current_Key then
            raise Not_Allocated;
         else
            K := Null_Key;
            Allocated := False;
         end if;
      end Free;

   end Insecure_Controller;

   protected body Secure_Controller is

      entry Allocate when not Allocated is
      begin
         Allocated := True;
         Current_Owner := Allocate'Caller;
      end Allocate;

      procedure Free is
      begin
         if Current_Task /= Current_Owner then
            raise Not_Allocated;
         else
            Allocated := False;
            Current_Owner := Null_Task_Id;
         end if;
      end Free;

   end Secure_Controller;

end Resource_Allocators;
