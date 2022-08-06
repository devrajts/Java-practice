public class RunThread implements Runnable{

    @Override
    public void run() {
        String name = Thread.currentThread().getName();
        System.out.println(name);
    }

    public static void main(String[] args) {
        RunThread rt = new RunThread();
        Thread t1 = new Thread(rt);
        Thread t2 = new Thread(rt);

        t1.setName("dev");
        t2.setName("raj");

        t1.start();
        t2.start();
    }
}
