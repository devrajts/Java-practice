class MiThread extends Thread{
    int num = 0;

    @Override
    public void run() {
        synchronized (this){
            System.out.println("child thread is performing calculation");
            for(int i=0; i<=100;i++){
                num = num + i;
            }
            System.out.println("child thread giving the notification");
            this.notify();
        }
    }
}

public class WaitNotify{
    public static void main(String[] args) {
        MiThread m1 = new MiThread();

        m1.start();

        synchronized (m1){
            System.out.println("main thread calls the wait method");
            try {
                m1.wait(3000);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
            System.out.println("main thread got the notification");
            System.out.println(m1.num);
        }
    }
}
