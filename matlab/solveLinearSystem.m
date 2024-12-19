function solveLinearSystem(matrix)
    if ~all(matrix(:, end) == ones(height(matrix),1))
        matrix(:, end + 1) = ones(height(matrix), 1)
    end
    disp(matrix)
    disp(rref(matrix))
end