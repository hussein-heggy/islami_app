import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio/radio_tab.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
import 'package:islami/tabs/time/time_tab.dart';

class HomeScreen extends StatefulWidget {
  static String homeScreen = "/home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currintindex = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];
  List<String> imagesBackground = [
    "assets/images/quran_background.png",
    "assets/images/hadeth_background.png",
    "assets/images/sebha_background.png",
    "assets/images/radio_background.png",
    "assets/images/time_background.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currintindex,
        onTap: (value) {
          currintindex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            label: "quran",
            icon: SvgPicture.asset("assets/icons/quran.svg"),
            activeIcon: SvgPicture.asset(
              "assets/icons/quran.svg",
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
          BottomNavigationBarItem(
            label: "hadeth",
            icon: SvgPicture.asset("assets/icons/hadeth.svg"),
            activeIcon: SvgPicture.asset(
              "assets/icons/hadeth.svg",
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
          BottomNavigationBarItem(
            label: "Sebha",
            icon: SvgPicture.asset("assets/icons/sebha.svg"),
            activeIcon: SvgPicture.asset(
              "assets/icons/sebha.svg",
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
          BottomNavigationBarItem(
            label: "Radio",
            icon: SvgPicture.asset("assets/icons/radio.svg"),
            activeIcon: SvgPicture.asset(
              "assets/icons/radio.svg",
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
          BottomNavigationBarItem(
            label: "Time",
            icon: SvgPicture.asset("assets/icons/time.svg"),
            activeIcon: SvgPicture.asset(
              "assets/icons/time.svg",
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imagesBackground[currintindex]),
              fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/images/header.png",
              height: MediaQuery.sizeOf(context).height * .18,
              fit: BoxFit.fill,
            ),
            Expanded(child: tabs[currintindex]),
          ],
        ),
      ),
    );
  }
}
