------------------------------------------------------------------------------
-- events.ads
--
-- This package exports a protected type Event. An event is either up or down
-- and can be set, reset, toggled, and waited on.
------------------------------------------------------------------------------

package Events is

   type Event_State is (Up, Down);

   protected type Event (Initial_State: Event_State := Down) is
      procedure Set;
      procedure Reset;
      procedure Toggle;
      function State return Event_State;
      entry Wait (S: Event_State);
   private
      entry Wait_Up;
      entry Wait_Down;
      Current_State: Event_State := Initial_State;
   end Event;

end Events;
