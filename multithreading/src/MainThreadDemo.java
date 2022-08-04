public class MainThreadDemo {
    public static void main(String[] args) {
        Thread obj = Thread.currentThread();
        System.out.println("Current thread is "+obj);
        System.out.println("Name of current thread is "+obj.getName());

        obj.setName("New Thread");
        System.out.println("Name of current thread after changing name is "+obj);
    }
}
