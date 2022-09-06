public class factor {
    public static void main(String[] args) {
        int num=12; int i=1;
        if(num<=100){
            for(i=1;i<=num;i++){
                if(num%i==0){
                    System.out.println(i);
                }
            }
        }
        else{
            System.out.println("Invalid Number");
        }
    }
}
