import java.io.*;

public class A implements Serializable {
    int i = 10;
    public void funA1(){
        System.out.println("inside funA() of A");
        System.out.println(i);
    }
}

class Main{
    public static void main(String[] args) throws IOException, ClassNotFoundException {
        A a1 = new A();
        a1.i=22;

        FileOutputStream fs = new FileOutputStream("file1.txt");
        ObjectOutputStream os = new ObjectOutputStream(fs);

        os.writeObject(a1);
        os.writeObject("Welcome");
        os.writeObject(10);

        os.close();

        FileInputStream fi = new FileInputStream("file1.txt");
        ObjectInputStream oi = new ObjectInputStream(fi);

        Object obj = oi.readObject();
        A a2 = (A)obj;
        a2.funA1();

        String ss = (String) oi.readObject();
        System.out.println(ss);

        int z = (Integer)oi.readObject();
        System.out.println(z);

        oi.close();
    }
}
