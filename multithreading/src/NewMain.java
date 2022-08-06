
class Common{
    public synchronized void fun1(String name){
        System.out.print("Welcome ");
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        System.out.println(name);
    }
}

class Threadx extends Thread{
    Common c;
    String name;

    public Threadx(Common c,String name){
        this.c=c;
        this.name=name;
    }

    @Override
    public void run() {
        c.fun1(name);
    }
}

class Thready extends  Thread{
    Common c;
    String name;

    public Thready(Common c,String name){
        this.c=c;
        this.name=name;
    }

    @Override
    public void run() {
        c.fun1(name);
    }
}

public class NewMain {
    public static void main(String[] args) {
        Common c = new Common();

        Threadx tx = new Threadx(c,"dev");
        Thready ty = new Thready(c,"Raj");

        tx.start();
        ty.start();
    }
}
