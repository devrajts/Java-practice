import java.io.FileReader;
import java.io.IOException;

public class ReadingMain {
    public static void main(String[] args) throws IOException {
        FileReader fr = new FileReader("d://abc.txt");
        int i = fr.read();

        while (i != -1){
            System.out.println((char) i);
            i = fr.read();
        }
    }
}
