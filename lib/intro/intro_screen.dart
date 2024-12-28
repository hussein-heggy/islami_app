import 'package:flutter/material.dart';
import 'package:islami/app_them.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/intro/intro.dart';
import 'package:islami/intro/intro_page_view_item.dart';

class IntroScreen extends StatefulWidget {
  static String routeName = "/intro_screen";
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _pageController = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> intoImages = [
      "assets/images/intro0.png",
      "assets/images/intro1.png",
      "assets/images/intro2.png",
      "assets/images/intro3.png",
      "assets/images/intro4.png",
    ];
    List<String> welcomeTexts = [
      "Welcome To Islmi App",
      "Welcome To Islami",
      "Reading the Quran",
      "Bearish",
      "Holy Quran Radio",
    ];
    List<String> overViewTexts = [
      "",
      "We Are Very Excited To Have You In Our Community",
      "Read, and your Lord is the Most Generous",
      "Praise the name of your Lord, the Most High",
      "You can listen to the Holy Quran Radio through the application for free and easily",
    ];
    List<Widget> _buildPageIndicator() {
      List<Widget> list = [];
      for (int i = 0; i < intoImages.length; i++) {
        list.add(i == currentIndex ? _indicator(true) : _indicator(false));
      }
      return list;
    }

    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/images/header.png",
              height: MediaQuery.sizeOf(context).height * .18,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: MediaQuery.sizeOf(context).height * .69,
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });

                if (index == intoImages.length - 1) {
                  Future.delayed(const Duration(milliseconds: 300), () {
                    Navigator.of(context)
                        .pushReplacementNamed(HomeScreen.routeName);
                  });
                }
              },
              itemBuilder: (_, index) => IntroPageViewItem(
                intro: Intro(
                  welcomeText: welcomeTexts[index],
                  overviewImage: intoImages[index],
                  overviewText: overViewTexts[index],
                ),
              ),
              itemCount: intoImages.length,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              currentIndex == 0
                  ? SizedBox(
                      width: MediaQuery.sizeOf(context).width * .156,
                    )
                  : TextButton(
                      onPressed: () {
                        _pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      child: Text(
                        "Back",
                        style: textTheme.titleMedium!
                            .copyWith(color: AppThem.primary),
                      ),
                    ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              TextButton(
                onPressed: () {
                  _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                },
                child: Text(
                  "Next",
                  style:
                      textTheme.titleMedium!.copyWith(color: AppThem.primary),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return SizedBox(
      height: 10,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        height: isActive ? 7 : 7.0,
        width: isActive ? 18 : 7.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27),
          color: isActive ? AppThem.primary : const Color(0xff707070),
        ),
      ),
    );
  }
}
