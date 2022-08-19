package sprint3_evaluation;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class Student implements Serializable {
    private int studentId;
    private String studentName;
    private String studentAddress;
    private String student_email;
    private transient String studentPassword;

    public Student() {
    }

    public Student(int studentId, String studentName, String studentAddress, String student_email, String studentPassword) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.studentAddress = studentAddress;
        this.student_email = student_email;
        this.studentPassword = studentPassword;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getStudentAddress() {
        return studentAddress;
    }

    public void setStudentAddress(String studentAddress) {
        this.studentAddress = studentAddress;
    }

    public String getStudent_email() {
        return student_email;
    }

    public void setStudent_email(String student_email) {
        this.student_email = student_email;
    }

    public String getStudentPassword() {
        return studentPassword;
    }

    public void setStudentPassword(String studentPassword) {
        this.studentPassword = studentPassword;
    }
}

class StudentDB {
    Student studentData;

    void addStudent(Student student){
        List<Student> list = Arrays.asList(student);
    }
}
class Main{
    public static void main(String[] args) {
        StudentDB sdb = new StudentDB();

        Scanner sc = new Scanner(System.in);
        System.out.println("please enter student id:");
        int id = sc.nextInt();

        System.out.println("Please enter student name:");
        String name = sc.nextLine();

        System.out.println("PLease enter student address:");
        String address = sc.nextLine();

        System.out.println("please enter student email:");
        String email = sc.nextLine();

        System.out.println("please enter password:");
        String password = sc.nextLine();

        Student st = new Student(id,name,address,email,password);
        sdb.addStudent(st);
    }
}
