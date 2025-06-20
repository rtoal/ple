------------------------------------------------------------------------------
-- sets.ads
--
-- A package exporting a generic ADT 'Set'. The sets are internally managed by
-- protected objects.
--
-- Generic Parameters:
--
--   Element         type desired type of the set elements.
--
-- Operations:
--
--   Enter (S,E)     enters E into S.
--   Remove (S,E)    removes E from S.
--   Member (S,E)    whether E is in S.
------------------------------------------------------------------------------

generic
   type Element is private;
package Sets is

   type Set is limited private;

   procedure Enter (S: in out Set; E: Element);
   procedure Remove (S: in out Set; E: Element);
   function Member (S: Set; E: Element) return Boolean;

private

   -- The internal representation of the set is a linked list of cells.
   type Cell;
   type Link is access Cell;
   type Cell is record
      Value: Element;
      Next: Link;
   end record;

   protected type Set is
      procedure Insert (E: Element);
      procedure Delete (E: Element);
      function Contains (E: Element) return Boolean;
   private
      Head: Link;
   end Set;

end Sets;
