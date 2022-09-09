public class Lion {
    String name;
    boolean isHungry;
    int age;

    static int totalDeaths;{
        totalDeaths=0;

    }

    static void printKillings(){
        System.out.println("Total killings by lions in jungle = "+totalDeaths);

    }

    void thinking(){
        if(isHungry=false){
            System.out.println("oldLion is sleeping");
        } else if (isHungry=true && age>12) {
            totalDeaths+=2;
            System.out.println("Simba has eaten two animal");
        } else if (isHungry=true && age<=12) {
            totalDeaths+=1;
            System.out.println("Victor has eaten one animal");
        } else if (isHungry=true && age<=2) {
            System.out.println("babyLion is calling Mom");
        }
    }

    public static void main(String[] args) {
        Lion lion1 = new Lion();
        lion1.isHungry=true;
        lion1.age=22;

        Lion lion2 = new Lion();
        lion2.isHungry=true;
        lion2.age=12;

        Lion lion3= new Lion();
        lion3.isHungry=true;
        lion3.age=20;

        lion1.thinking();
        lion2.thinking();
        lion3.thinking();

        printKillings();

    }
}
