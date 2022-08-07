import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

public class CharCount {
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the input file name in d drive.");
        String input = sc.nextLine();

        System.out.println("Enter the character to be counted.");
        String chr = sc.next();
        char c = chr.charAt(0);

        FileReader fr = new FileReader("d://"+input);
        int i = fr.read();
        int counter = 0;

        while(i != -1) {
            if((char)i == c) {
                counter++;
            }
            i = fr.read();
        }
        System.out.println("File "+input+" has "+counter+" instance of letter "+c);
    }
}
