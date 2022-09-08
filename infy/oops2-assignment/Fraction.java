public class Fraction {
    private int num; // Numerator is encapsulated. So, we cannot access it directly from outside the class.
    private int deno; // Denominator is encapsulated.
    Fraction()
    {
// Declaration and initialization of values of Instance variables.
//        this.num = 100;
//        this.deno = 200;
    }

    public void setNum(int num){
        this.num=num;
    }
    public void setDeno(int deno){
        this.deno=deno;
    }
//    Fraction()
//    {
//        this(100,200); // Calling current class parameterized constructort.
//    }
    // Create the getter method to read the values because we cannot read values directly from outside the class.
    public int getNum()
    {
        return num;
    }
    public int getDeno()
    {
        return deno;
    }
}
class FractionTest{
    // Main method.
    public static void main(String[] args)
    {
// Default constructor will be called after object creation.
        Fraction obj = new Fraction();
        obj.setNum(100);
        obj.setDeno(200);
        // Call getter method using object reference variable obj to read the value of variables.
        System.out.println(+obj.getNum());
        System.out.println(+obj.getDeno());
    }
}
