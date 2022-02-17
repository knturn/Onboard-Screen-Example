import 'package:flutter/material.dart';
import 'package:splash_views/splash_page_views/splash_page_model.dart';

class SplashPageView extends StatefulWidget {
  const SplashPageView({Key? key}) : super(key: key);

  @override
  _SplashPageViewState createState() => _SplashPageViewState();
}

class _SplashPageViewState extends State<SplashPageView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            color: Colors.white,
            child: Column(
              children: [],
            )),
      ),
    );
  }
}
