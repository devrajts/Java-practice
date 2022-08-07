import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class CopyFile {
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the input file name");
        String input = sc.nextLine();

        System.out.println("Enter the output file name");
        String output = sc.nextLine();

        FileReader fr = new FileReader("d://"+input);
        FileWriter fw = new FileWriter("d://"+output);
        int c;
        while((c = fr.read()) != -1){
            fw.write(c);
        }
        System.out.println("Copy finished.");
        fr.close();
        fw.close();
    }
}
