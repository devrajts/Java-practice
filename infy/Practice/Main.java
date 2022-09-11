public class Main {
    static int j=200;
//    static A a1 = new A();
    public static void main(String[] args)
    {
        Main obj=new Main();
        System.out.println(obj.j);
        A a1 = new A();
//System.out.println(obj.j);// 200
//System.out.println(obj.a1); //A@23232
//obj.a1.funA();
        a1.funA();
//        Main.a1.funA();
//System.out.println();
    }

}
 class A {
    int x = 10;
    void funA(){
        System.out.println("inside funA of A class");
    }
}
