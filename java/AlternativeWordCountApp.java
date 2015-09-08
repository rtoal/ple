import java.util.TreeMap;
import java.util.stream.Collectors;
import java.io.*;
import static java.util.stream.Collectors.*;
import java.util.Arrays;

public class AlternativeWordCountApp {

    public static void main(String[] args) {
    	((new BufferedReader(new InputStreamReader(System.in)))
    		.lines()
            .map(line -> line.split("[^a-zA-Z']+"))
            .flatMap(Arrays::stream)	
    		.collect(groupingBy(String::toLowerCase, TreeMap::new, counting())))
    	.forEach((word, count) -> System.out.printf("%s %d\n", word, count));
    }
}