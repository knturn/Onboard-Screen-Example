class SplashPageModel {
  String title;
  String decription;
  String image;

  SplashPageModel(
      {required this.title, required this.decription, required this.image});

  static List<SplashPageModel> pages = [
    SplashPageModel(
        title: "title0",
        decription: "decription0",
        image: "assets/images/1.png"),
    SplashPageModel(
        title: "title1",
        decription: "decription1",
        image: "assets/images/2.png"),
    SplashPageModel(
        title: "title1",
        decription: "decription2",
        image: "assets/images/3.png")
  ];
}
