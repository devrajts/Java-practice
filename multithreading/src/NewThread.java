public class NewThread extends Thread{
    public void run(){
        System.out.println("Devaraj");
    }
    public static void main(String[] args) {
        int ac1 = Thread.activeCount();
        System.out.println("ac1 = "+ac1);

        NewThread nt = new NewThread();
        int ac2 = Thread.activeCount();
        System.out.println("ac2 = "+ac2);
        Thread t1 = new Thread(nt);
        int ac3 = Thread.activeCount();
        System.out.println("ac3 = "+ac3);
        t1.start();
        int ac4 = Thread.activeCount();
        System.out.println("ac4 = "+ac4);
    }
}
