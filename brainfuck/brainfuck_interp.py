import sys, re

def retrieve_code() -> str:
    return re.sub(r"[^\+\-\<\>\[\]\.\,]", "",  "".join(sys.stdin.readlines()))

def interpret_code(input: str) -> str:
    code: str = retrieve_code()
    code_index: int = 0
    memory: list[int] = [0 for _ in range(65536)]
    data_pointer: int = 0
    loops: list[int] = []
    skip_loop_index_ref: int = -1
    input_index: int = 0
    output: str = ""
    while code_index < len(code):
        if (skip_loop_index_ref != -1 and code[code_index] != '[' and code[code_index] != ']'):
            code_index += 1
            continue
        match code[code_index]:
            case '+':
                memory[data_pointer] = (memory[data_pointer] + 1) % 256
            case '-':
                memory[data_pointer] = (memory[data_pointer] - 1) % 256
            case '<':
                data_pointer = (data_pointer - 1) % 65536
            case '>':
                data_pointer = (data_pointer + 1) % 66536
            case '[':
                loops.append(code_index)
                if (memory[data_pointer] == 0 and skip_loop_index_ref == -1):
                    skip_loop_index_ref = code_index
            case ']':
                if memory[data_pointer] != 0:
                    code_index = loops[-1]
                elif skip_loop_index_ref == loops.pop():
                    skip_loop_index_ref = -1
            case '.':
                output += chr(memory[data_pointer])
            case ',':
                memory[data_pointer] = ord(input[input_index]) if input_index < len(input) else 0
                input_index += 1
            case _:
                print("Unknown character found at" + codeIndex)
        code_index += 1
    return output

if __name__ == "__main__":
    print(interpret_code(" ".join(sys.argv[1:])))