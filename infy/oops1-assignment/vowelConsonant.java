import java.util.Scanner;
public class vowelConsonant {
    void vowelOrNot(char vc){
        if(vc=='a' || vc=='e' || vc=='i' || vc=='o' || vc=='u'){
            System.out.println(vc+" is Vowel");
        } else if ((vc>='a'&&vc<='z')||(vc>='A'&&vc<='Z')) {
            System.out.println(vc+" is Consonant");
        }else {
            System.out.println("Invalid Character");
        }
    }

    public static void main(String[] args) {
        vowelConsonant obj = new vowelConsonant();
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a character : ");
        char in=sc.next( ).charAt(0);
        obj.vowelOrNot(in);
    }

}
