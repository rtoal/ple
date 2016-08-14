fun quicksort [] = []
  | quicksort (h::t) =
      let
        val (small,large) = List.partition (fn x => x <= h) t
      in
        quicksort small @ [h] @ quicksort large
      end;

quicksort [] = [] orelse raise Fail "bad";
quicksort [1] = [1] orelse raise Fail "bad";
quicksort [2, 5, 7, 6] = [2, 5, 6, 7] orelse raise Fail "bad";
quicksort [10, 5, 3, 2, 6, 7, 9, 1, 4, 8] =
  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] orelse raise Fail "bad";
