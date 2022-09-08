import java.awt.event.AdjustmentEvent;

public class Demo {
    public Demo(){
        this("dev");
        System.out.println("this is a zero argument constructor Demo()");
    }
    public Demo(String s){
        this(11);
        System.out.println("this is a string argument constructor Demo(String s)");
    }
    public Demo(int i){
        this(20.12f);
        System.out.println("this is a int argument constructor Demo(int i)");
    }
    public Demo(float f){
        System.out.println("this is a float argument constructor Demo(float f)");
    }
    public static void main(String[] args){
        Demo d1=new Demo();
    }

}
