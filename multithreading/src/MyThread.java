public class MyThread implements Runnable{
    int a = 20; int b = 10;
    @Override
    public void run() {
        addition();
        subtraction();
        multiplication();
    }

    private void multiplication() {
        int product = a*b;
        System.out.println(product);
    }

    private void subtraction() {
        int sub = a-b;
        System.out.println(sub);
    }

    private void addition() {
        int sum = a+b;
        System.out.println(sum);
    }

    public static void main(String[] args) {
        MyThread mt = new MyThread();
        Thread t = new Thread(mt);
        t.start();
    }
}
