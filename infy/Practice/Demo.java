public class Demo {
    public Demo(){
        this(10);
        System.out.println("inside zero argument constructor Demo()");
    }
    public Demo(int x){
        this(100, 200);
        System.out.println("inside one argument constructor Demo(int x)");
    }
    public Demo(int x,int y){
        this("Hello");
        System.out.println("inside two argument constructor Demo(int x,int y)");
    }
    public Demo(String s){
//this(); //it will become recursive call
        System.out.println("inside one(String) argument constructor Demo(String s)");
    }
    public static void main(String[] args){
        Demo d1=new Demo();
        
    }


}
