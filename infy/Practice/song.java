public class song {
    String artist;
    String title;

    void play(){
        System.out.println(artist+" is singing "+title);
    }

    public static void main(String[] args) {
        song title1 = new song();
        title1.artist="Lata";
        title1.title="wande mataram";
        title1.play();

        song track2 = new song();
        track2.artist="sonu";
        track2.title="paravashnadenu";
        track2.play();
    }
}
