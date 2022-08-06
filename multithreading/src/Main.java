public class Main {
    public static void main(String[] args) {
        ThreadA t1 = new ThreadA();
        ThreadB t2 = new ThreadB();
        ThreadC t3 = new ThreadC();

        t1.start();
        t2.start();
        t3.start();

        for (int i = 70; i < 80; i++) {
            System.out.println("inside main of Test:" + i);
        }
        System.out.println("end of main");

    }
}
class ThreadA extends Thread{
    @Override
    public void run() {
        for(int i=0; i<10; i++){
            System.out.println("Inside run method of ThreadA "+i);
        }
        System.out.println("end of Thread A");
    }
}

class ThreadB extends Thread{
    @Override
    public void run() {
        for(int i=50; i<60; i++){
            System.out.println("Inside run method of ThreadB "+i);
        }
        System.out.println("end of Thread B");
    }
}

class ThreadC extends Thread{
    @Override
    public void run() {
        for(int i=20; i<30; i++){
            System.out.println("Inside run method of ThreadC "+i);
        }
        System.out.println("end of Thread C");
    }
}
