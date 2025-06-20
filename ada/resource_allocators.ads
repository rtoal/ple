------------------------------------------------------------------------------
-- resource_allocators.ads
--
-- This package provides two resource allocators, one insecure and one secure.
-- A secure allocator is one for which it is impossible for any task other
-- than the task which allocated a resource to free it. This is easy to
-- implement with Ada.Task_Identification. The attempt at secure resource
-- allocation which turned out to be insecure uses keys. However there is no
-- guarantee that the calling tasks didn't use globally accessible key
-- variables.
------------------------------------------------------------------------------

with Ada.Task_Identification;
use Ada.Task_Identification;

package Resource_Allocators is

   Not_Allocated: exception;

   type Key is limited private;
   Null_Key: constant Key;

   protected Insecure_Controller is
      entry Allocate (K: out Key);
      procedure Free (K: in out Key);
   private
      Allocated: Boolean := False;
      Current_Key: Key;
   end Insecure_Controller;

   protected Secure_Controller is
      entry Allocate;
      procedure Free;
   private
      Allocated: Boolean := False;
      Current_Owner: Task_Id := Null_Task_Id;
   end Secure_Controller;

private

   type Key is record
      Value: Natural := 0;
   end record;

   Null_Key: constant Key := (Value => 0);

end Resource_Allocators;
