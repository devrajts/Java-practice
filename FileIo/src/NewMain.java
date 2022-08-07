import java.io.FileWriter;
import java.io.IOException;

public class NewMain {
    public static void main(String[] args) throws IOException {
        FileWriter fw = new FileWriter("d://abc.txt");

        fw.write(100);
        fw.write("\n");
        fw.write("ramesh\nwelcome");
        fw.write("\n");
        fw.write("india");
        fw.write("\n");
        char ch[] = {'a','v','c'};
        fw.write(ch);

        fw.flush();
        fw.close();

        System.out.println("done");
    }
}
