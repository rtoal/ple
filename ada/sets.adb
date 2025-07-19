------------------------------------------------------------------------------
-- sets.adb
--
-- Implementation of the ADT Set implemented as a protected type.
------------------------------------------------------------------------------

package body Sets is

   protected body Set is
      procedure Insert (E: Element) is
         L: Link := Head;
      begin
         while L /= null and then L.Value /= E loop      -- see if already there
            L := L.Next;
         end loop;
         if L = null then                                -- wasn't there
            Head := new Cell'(E, Head);                   -- so push on list
         end if;
      end Insert;

      procedure Delete (E: Element) is
         L: Link := Head;
      begin
         if Head = null then
            null;
         elsif Head.Value = E then
            Head := Head.Next;
         else
            while L.Next /= null and then L.Next.Value /= E loop
               L := L.Next;
            end loop;
             if L.Next /= null then
               L.Next := L.Next.Next;
            end if;
         end if;
      end Delete;

      function Contains (E: Element) return Boolean is
         L: Link := Head;
      begin
         while L /= null and then L.Value /= E loop
            L := L.Next;
         end loop;
         return L /= null;
      end Contains;
   end Set;

   procedure Enter (S: in out Set; E: Element) is
   begin
      S.Insert (E);
   end Enter;

   procedure Remove (S: in out Set; E: Element) is
   begin
      S.Delete (E);
   end Remove;

   function Member (S: Set; E: Element) return Boolean is
   begin
      return S.Contains(E);
   end Member;

end Sets;
