function anagrams(input)
    for scrambled = perms(char(input)).'
        disp(string(scrambled.'));
    end
end