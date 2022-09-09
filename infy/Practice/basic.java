public class basic {
    static public int add(int x, int y){
        return x+y;
    }
    int multiply(int a, int b){
        return a*b;
    }

//    static public int multiply(int m, int n){
//        return m*n;
//    }

    public static void main(String[] args) {
        int c = add(10,20);
        System.out.println(c);
//        int z = multiply(6,6);
//        System.out.println(z);

        basic b1 = new basic();
        int d = b1.multiply(5,5);
        System.out.println(d);
    }
}
