------------------------------------------------------------------------------
-- events.adb
--
-- Implementation of the Events package.
------------------------------------------------------------------------------

package body Events is

   protected body Event is

      procedure Set is
      begin
         Current_State := Up;
      end Set;

      procedure Reset is
      begin
         Current_State := Down;
      end Reset;

      procedure Toggle is
      begin
         if Current_State = Up then
            Current_State := Down;
         else
            Current_State := Up;
         end if;
      end Toggle;

      function State return Event_State is
      begin
         return Current_State;
      end State;

      entry Wait (S: Event_State) when True is
      begin
         if S = Up then
            requeue Wait_Up with abort;
         else
            requeue Wait_Down with abort;
         end if;
      end Wait;

      entry Wait_Up when Current_State = Up is
      begin
         null;
      end Wait_Up;

      entry Wait_Down when Current_State = Down is
      begin
         null;
      end Wait_Down;

   end Event;

end Events;
