------------------------------------------------------------------------------
-- signals.adb
--
-- Implementation of the signal types.
------------------------------------------------------------------------------

package body Signals is

   protected body Persistent_Signal is

      -- A task waits for the signal to be sent.  When it is sent, the barrier
      -- goes down and the task proceeds, resetting the signal.
      entry Wait when Signalled is
      begin
         Signalled := False;
      end Wait;

      -- Sending the signal is simply marking it sent.
      procedure Send is
      begin
         Signalled := True;
      end Send;

   end Persistent_Signal;

   protected body Transient_Signal is

      -- When the signal is sent, tasks are released.  If the signal was
      -- not a Send_All then the task resets the signal, otherwise the
      -- signal will be reset by the last waiting task.
      entry Wait when Signalled is
      begin
         if Wait'Count = 0 or not Release_All then
            Signalled := False;
         end if;
      end Wait;

      -- For transient signals, we do not want to mark the signal sent unless
      -- tasks are already waiting for the signal.
      procedure Send is
      begin
         if Wait'Count > 0 then
            Signalled := True;
            Release_All := False;
         end if;
      end Send;

      procedure Send_All is
      begin
         if Wait'Count > 0 then
            Signalled := True;
            Release_All := True;
         end if;
      end Send_All;

   end Transient_Signal;

end Signals;
