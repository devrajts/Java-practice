public class mystudent {
    private int roll;
    private String name;
    private int age;
    private int marks;



    public void student(int roll,String name,int age,int marks){
        this.roll=roll;
        this.name=name;
        this.age=age;
        this.marks=marks;
    }

    public void showDetails(){
        System.out.println("Roll is : "+roll);
        System.out.println("Name is : "+name);
        System.out.println("Age is : "+age);
        System.out.println(("Marks is : "+marks));
    }

    public static void main(String[] args) {
        student std2 = new student(11,"Raj",23,395);

        System.out.println("Student2 details: ");
        std2.showDetails();
    }

}
