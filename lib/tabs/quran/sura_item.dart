import 'package:flutter/material.dart';
import 'package:islami/app_them.dart';

class SuraItem extends StatelessWidget {
  String englishSuraName;
  String arabicSuraName;
  String ayatNumber;
  int index;
  SuraItem(
      {required this.englishSuraName,
      required this.arabicSuraName,
      required this.ayatNumber,
      required this.index,
      super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Container(
            margin:
                EdgeInsets.only(right: MediaQuery.sizeOf(context).width * .03),
            height: MediaQuery.sizeOf(context).height * .055,
            width: MediaQuery.sizeOf(context).height * .055,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/sura_namber_frame.png"),
              ),
            ),
            child: Text(
              "${index + 1}",
              style: textTheme.titleSmall,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(englishSuraName, style: textTheme.titleLarge),
              Text(
                " $ayatNumber verses",
                style: textTheme.titleSmall,
              ),
            ],
          ),
          Spacer(),
          Text(
            arabicSuraName,
            style: textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
