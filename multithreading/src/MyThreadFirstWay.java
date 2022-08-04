import javax.management.relation.RelationNotFoundException;

public class MyThreadFirstWay extends Thread{
    public void run(){
        System.out.println("My name is Devaraj");
    }

    public static void main(String[] args) {
        MyThreadFirstWay f1 = new MyThreadFirstWay();
        f1.start();
        f1.run();


        myRunnable f2 = new myRunnable();
        f2.run();
        //here we cannot call f2.start directly because it was not extended thread.
        Thread myThreadSecondWay = new Thread(new myRunnable());
        myThreadSecondWay.start();
    }
}
class  myRunnable implements Runnable{

    @Override
    public void run() {
        System.out.println("My full name is Devaraj T S");
    }
}
