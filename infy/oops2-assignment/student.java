public class student {
    private int roll;
    private String name;
    private int age;
    private int marks;

    public student(){

    }

    public student(int roll,String name,int age,int marks){
        this.roll=roll;
        this.name=name;
        this.age=age;
        this.marks=marks;
    }

    public void setRoll(int roll){
        this.roll=roll;
    }
    public int getRoll(){
        return roll;
    }

    public void setName(String name){
        this.name=name;
    }
    public String getName(){
        return name;
    }

    public void setAge(int age){
        this.age=age;
    }
    public int getAge(){
        return age;
    }

    public void setMarks(int marks){
        this.marks=marks;
    }
    public int getMarks(){
        return marks;
    }

    public void showDetails(){
        System.out.println("Roll is : "+roll);
        System.out.println("Name is : "+name);
        System.out.println("Age is : "+age);
        System.out.println(("Marks is : "+marks));
    }

    public static void main(String[] args) {
        student std1 = new student();
        std1.setRoll(10);
        std1.setName("Dev");
        std1.setAge(24);
        std1.setMarks(425);

        System.out.println("Student1 details: ");
        System.out.println("Roll is : "+std1.getRoll());
        System.out.println("Name is : "+std1.getName());
        System.out.println("Age is : "+std1.getAge());
        System.out.println("Marks is : "+std1.getMarks());

        System.out.println("-----------------------");


        student std2 = new student(11,"Raj",23,395);

        System.out.println("Student2 details: ");
        std2.showDetails();

    }
}
