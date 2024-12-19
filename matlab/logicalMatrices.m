a = [1 1 ; 1 1]
b = [1 0 ; 1 1]
c = [0 0 ; 0 0]

fprintf("any(a(:)) is %d\n", any(a(:)))
fprintf("any(b(:)) is %d\n", any(b(:)))
fprintf("any(c(:)) is %d\n", any(c(:)))
fprintf("all(a(:)) is %d\n", all(a(:)))
fprintf("all(b(:)) is %d\n", all(b(:)))
fprintf("all(c(:)) is %d\n", all(c(:)))
fprintf("any(a == b) is %d\n", any(a == b))
fprintf("any(a == c) is %d\n", any(a == c))
fprintf("any(b == c) is %d\n", any(b == c))
