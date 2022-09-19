import java.io.*;

public class Address implements Serializable {
    private String state;
    private String city;
    private String pincode;

    public Address() {

    }

    public Address(String state, String city, String pincode) {
        super();
        this.state = state;
        this.city = city;
        this.pincode = pincode;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

}

class Student implements Serializable{
    private int roll;
    private String name;
    private Address address;
    private String email;
    transient private String password;


    public Student() {

    }


    public Student(int roll, String name, Address address, String email, String password) {
        super();
        this.roll = roll;
        this.name = name;
        this.address = address;
        this.email = email;
        this.password = password;
    }


    public int getRoll() {
        return roll;
    }


    public void setRoll(int roll) {
        this.roll = roll;
    }


    public String getName() {
        return name;
    }


    public void setName(String name) {
        this.name = name;
    }


    public Address getAddress() {
        return address;
    }


    public void setAddress(Address address) {
        this.address = address;
    }


    public String getEmail() {
        return email;
    }


    public void setEmail(String email) {
        this.email = email;
    }


    public String getPassword() {
        return password;
    }


    public void setPassword(String password) {
        this.password = password;
    }


}

class Main1 {
    public static void main(String[] args) throws IOException, ClassNotFoundException {
        Address a1 = new Address("Karnataka", "Davanagere", "577002");
        Student s1 = new Student(1, "Dev", a1, "devraj123@gmail.com", "123456");

        FileOutputStream fo = new FileOutputStream("Student.txt");
        ObjectOutputStream os = new ObjectOutputStream(fo);

        os.writeObject(s1);


        os.flush();
        os.close();

        System.out.println("serialization complete.");
        System.out.println("----------------------------------");
        System.out.println("Starting Deserialization.");

        FileInputStream fi = new FileInputStream("Student.txt");
        ObjectInputStream oi = new ObjectInputStream(fi);

        Object obj = oi.readObject();

        Student s2 = (Student)obj;

        System.out.println("Student roll : "+s2.getRoll());
        System.out.println("Student Name : "+s2.getName());
        System.out.println("Student Address : State : "+a1.getState()+", city : "+a1.getCity()+", pincode : "+a1.getPincode());
        System.out.println("Student Email Id : "+s2.getEmail());
        System.out.println("Student password : "+s2.getPassword());

        oi.close();
        System.out.println("Deserialization complete.");
        System.out.println("----------------------------------");


    }
}
