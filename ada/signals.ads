------------------------------------------------------------------------------
-- signals.ads
--
-- This package provides a couple of signal types.
--
-- Persistent Signal
--
--   A task may wait for a signal. If a signal has already been sent the task
--   may proceed immediately, and then the signal is reset. Whenever a task
--   sends a signal the signal is "sent" until a waiting task consumes it.
--
-- Transient Signal
--
--   When a signal is sent and no tasks are waiting on it, it just disappears.
--   The procedure Send will release  one waiting task, whereas Send_All will
--   release all tasks waiting at that signal.
------------------------------------------------------------------------------

package Signals is

   protected type Persistent_Signal is
      entry Wait;
      procedure Send;
   private
      Signalled: Boolean := False;
   end Persistent_Signal;

   protected type Transient_Signal is
      entry Wait;
      procedure Send;
      procedure Send_All;
   private
      Signalled: Boolean := False;
      Release_All: Boolean;
   end Transient_Signal;

end Signals;
