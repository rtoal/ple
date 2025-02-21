import java.util.regex.Pattern;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Stack;

public class BrainfuckInterp {

    private static String retrieveCode(){
        /**
         * Takes brainfuck file and cleans up the code such that there
         * are no comment characters in the code before interpreting the
         * code. 
         * 
         * @return      the brainfuck code without any comment characters
         */

        Pattern commentChars = Pattern.compile("[^\\+\\-\\<\\>\\[\\]\\.,]");
        String content = String.join("", new BufferedReader(new InputStreamReader(System.in))
                                   .lines()
                                   .toArray(String[]::new));
        return commentChars.matcher(content).replaceAll("");
    }

    private static String interpretCode(String input) {
        /**
         * Interprets the brainfuck code and, if so, prints out its output.
         * For the interpretor itself, it will just return the output from
         * the brainfuck code.
         * 
         * @param input     the input that gets fed to the brainfuck code
         * @return          the output of the brainfuck code
         */
        String code = retrieveCode();
        int codeIndex = 0;
        int[] memory = new int[65536];
        int dataPointer = 0;
        Stack<Integer> loops = new Stack<Integer>();
        int skipLoopIndexRef = -1;
        int inputIndex = 0;
        String output = "";
        //System.out.println(code);
        while (codeIndex < code.length()) {
            if (skipLoopIndexRef != -1 && code.charAt(codeIndex) != '[' && code.charAt(codeIndex) != ']') {
                codeIndex++;
                continue;
            }
            switch(code.charAt(codeIndex)) {
                case '+':
                    memory[dataPointer] = (memory[dataPointer] + 1) % 256;
                    break;
                case '-':
                    memory[dataPointer] = (memory[dataPointer] - 1) % 256;
                    if (memory[dataPointer] < 0) {
                        memory[dataPointer] += 256;
                    }
                    break;
                case '<':
                    dataPointer = (dataPointer - 1) % 65536;
                    if (dataPointer < 0) {
                        dataPointer += 65536;
                    }
                    break;
                case '>':
                    dataPointer = (dataPointer + 1) % 65536;
                    break;
                case '[':
                    loops.push(codeIndex);
                    if (memory[dataPointer] == 0 && skipLoopIndexRef == -1) {
                        skipLoopIndexRef = codeIndex;
                    }
                    break;
                case ']':
                    if (memory[dataPointer] != 0) {
                        codeIndex = (int) loops.peek();
                    } else if (skipLoopIndexRef == loops.pop()) {
                        skipLoopIndexRef = -1;
                    }
                    break;
                case '.':
                    output += (char) memory[dataPointer];
                    break;
                case ',':
                    if (inputIndex < input.length()) {
                        memory[dataPointer] = (int) input.charAt(inputIndex);
                        inputIndex++;
                    } else {
                        memory[dataPointer] = 0;
                    }
                    break;
                default:
                    throw new Error("Unknown character found at" + codeIndex);
            }
            codeIndex++;
        }
        return output;
    }
    public static void main(String args[]) {
        System.out.print(interpretCode(String.join(" ", args)));
    }
}