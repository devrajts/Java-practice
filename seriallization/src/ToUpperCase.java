import java.io.*;
import java.util.Scanner;

public class ToUpperCase {
    public static void main(String[] args) throws Exception {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the file name.");
        String name = sc.nextLine();
        File file2 = new File("newfile.txt");

        FileReader fr = new FileReader(name);
        BufferedReader in = new BufferedReader(fr);

        FileWriter fw = new FileWriter(file2);
        BufferedWriter out = new BufferedWriter(fw);

        int ch;
        while ((ch = in.read()) != -1){
            if (Character.isLowerCase(ch)){
                ch=Character.toUpperCase(ch);
            }
            out.write(ch);
        }
        in.close();
        out.close();


        FileReader fr2 = new FileReader(file2);
        BufferedReader br = new BufferedReader(fr2);

        String line = br.readLine();
        while(line != null) {
            System.out.println(line);
            line = br.readLine();
        }
        br.close();

    }
}
