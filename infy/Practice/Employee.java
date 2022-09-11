public class Employee {
    String empId;
    String empName;
    double salary;

    Address address = new Address();

    public void showDetails(){
        System.out.println("Employee Id :"+empId);
        System.out.println("Employee Name :"+empName);
        System.out.println("Employee salary :"+salary);

        System.out.println("Employee Address :");
        address.printAddress();
    }

    public static void main(String[] args) {
        Employee emp1 =new Employee();
        emp1.empId="Emp-01";
        emp1.empName="dev";
        emp1.salary=410000;

        emp1.address.city="Coimbator";
        emp1.address.state="Karnataka";
        emp1.address.pincode="428222";
        emp1.showDetails();


    }

}
 class Address {
    String city;
    String state;
    String pincode;

    public void printAddress(){
        System.out.println("City :"+city);
        System.out.println("State :"+state);
        System.out.println("pincode :"+pincode);
    }
}
