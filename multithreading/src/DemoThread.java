public class DemoThread {
    public static void main(String[] args) {
        Thread obj  = Thread.currentThread();

        System.out.println("Current thread is "+obj);
        System.out.println("Name of current thread is "+obj.getName());
    }
}
