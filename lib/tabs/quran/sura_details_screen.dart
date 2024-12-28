import 'package:flutter/material.dart';
import 'package:islami/app_them.dart';
import 'package:islami/tabs/quran/sura.dart';

class SuraDetailsScreen extends StatelessWidget {
  static String routeName = "/sura_details_screen";

  @override
  Widget build(BuildContext context) {
    Sura sura = ModalRoute.of(context)!.settings.arguments as Sura;
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("${sura.englishSuraName}"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.034),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/sura_details_header_left.png",
                  height: height * .098,
                  width: width * .21,
                  fit: BoxFit.fill,
                ),
                Text(
                  "${sura.arabicSuraName}",
                  style:
                      textTheme.headlineSmall?.copyWith(color: AppThem.primary),
                ),
                Image.asset(
                  "assets/images/sura_details_header_right.png",
                  height: height * .098,
                  width: width * .21,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: width * 0.046),
              itemBuilder: (_, index) => Text(
                "data",
                style: textTheme.titleLarge?.copyWith(color: AppThem.primary),
                textAlign: TextAlign.center,
              ),
              itemCount: 10,
            ),
          ),
          Image.asset(
            "assets/images/sura_details_footer.png",
            height: height * .12,
            width: width,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
