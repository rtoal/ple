function solveRandomLinearSystem()
    size = randi(50);
    a = randi(100, size);
    a(:, end + 1) = ones(size, 1);
    disp(a);
    disp(rref(a))
end