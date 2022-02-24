class SplashPageModel {
  String title;
  String decription;
  String image;

  SplashPageModel(
      {required this.title, required this.decription, required this.image});

  static List<SplashPageModel> pages = [
    SplashPageModel(
        title: "Symptoms of Covid-19",
        decription:
            "Covid-19 effects different peoples in different ways. Most infected people will develop mild to moderate ilness.",
        image: "assets/images/1.png"),
    SplashPageModel(
        title: "Covid-19 Information",
        decription:
            "Most people who fall sick with Covid-19 will experience mil to moderate symptoms.",
        image: "assets/images/2.png"),
    SplashPageModel(
        title: "Just Stay at Home",
        decription:
            "Stay at home to self quarentine ourself from Covid-19 hopefully everything gona be fine soon. ",
        image: "assets/images/3.png")
  ];
}
