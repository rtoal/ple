import std::io
import std::ascii
import std::array
import string from std::ascii

public export method main():
    int c = 1
    while c <= 40:
        int b = 1
        while b <= c:
            int a = 1
            while a <= b:
                if ((a * a) + (b * b)) == (c * c):
                    string triple = array::append(ascii::to_string(a), ", ")
                    triple = array::append(triple, ascii::to_string(b))
                    triple = array::append(triple, ", ")
                    triple = array::append(triple, ascii::to_string(c))
                    io::println(triple)
                a = a + 1
            b = b + 1
        c = c + 1
