for c = 1 to 50 do
  for b = 1 to c-1 do
    for a = 1 to b-1 do
      if a * a + b * b = c * c then Printf.printf("%d, %d, %d\n") a b c
    done
  done
done
