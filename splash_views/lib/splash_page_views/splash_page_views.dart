import 'package:flutter/material.dart';
import 'package:splash_views/splash_page_views/splash_page_model.dart';

class SplashPageView extends StatefulWidget {
  const SplashPageView({Key? key}) : super(key: key);

  @override
  _SplashPageViewState createState() => _SplashPageViewState();
}

class _SplashPageViewState extends State<SplashPageView> {
  PageController? _controller;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.white, child: createPageView()),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  Expanded createPageView() {
    return Expanded(
        child: PageView.builder(
      onPageChanged: (newIndex) {
        setState(() {
          currentIndex = newIndex;
        });
      },
      controller: _controller,
      itemCount: SplashPageModel.pages.length,
      itemBuilder: (_, index) {
        return pageViewItem(index);
      },
    ));
  }

  Widget pageViewItem(int index) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(SplashPageModel.pages[index].image),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [indicatorWidget()],
              ),
            ),
          ),
        )
      ],
    );
  }

  Expanded indicatorWidget() {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                SplashPageModel.pages.length,
                (index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: CircleAvatar(
                        radius: currentIndex == index ? 8 : 6,
                        backgroundColor: currentIndex == index
                            ? Colors.deepOrangeAccent
                            : Colors.grey,
                      ),
                    ))),
      ),
    );
  }
}
