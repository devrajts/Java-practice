public class student {
   int roll = 0;
   String name= " ";
   int marks = 0;

   void registration(int rollNo, String studentName, int studentMarks){
       roll = rollNo;
       name = studentName;
       marks = studentMarks;
   }

   void displayStudentDetails(){
       System.out.println("Roll is = "+roll);
       System.out.println("Name is = "+name);
       System.out.println("Marks is = "+marks);
   }

    public static void main(String[] args) {
       student s1 = new student();
       s1.registration(01,"Dev",75);

       student s2 = new student();
       s2.registration(02,"Raj",85);


       s1.displayStudentDetails();
       System.out.println("----------------\n");
       s2.displayStudentDetails();



    }
}
