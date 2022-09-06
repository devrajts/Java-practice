 public class switchcase {
    public static void main(String[] args) {
        String name="Bangalore";

        switch (name){
            case "Mumbai":System.out.println("Financial city");
            break;
            case "Kolkata":System.out.println("City of joy");
            break;
            case "Delhi":System.out.println("Capital of the country");
            break;
            case "Bangalore":System.out.println("Cyber city");
            break;
            default:
                System.out.println("Invalid Input");
        }
    }
}
