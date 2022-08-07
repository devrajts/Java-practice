import java.io.File;
import java.io.IOException;

public class Main {
    public static void main(String[] args) {

        try {
            File f = new File("d://a1.txt");
            if(f.createNewFile()){
                System.out.println("New file is created!");
            }else{
                System.out.println("File already exists.");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
