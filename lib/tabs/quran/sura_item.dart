import 'package:flutter/material.dart';
import 'package:islami/tabs/quran/sura.dart';
import 'package:islami/tabs/quran/sura_details_screen.dart';

class SuraItem extends StatelessWidget {
  Sura sura;
  SuraItem({required this.sura, super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          SuraDetailsScreen.routeName,
          arguments: sura,
        );
      },
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
              "${sura.indexNum}",
              style: textTheme.titleSmall,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(sura.englishSuraName, style: textTheme.titleLarge),
              Text(
                " ${sura.ayatNumber} verses",
                style: textTheme.titleSmall,
              ),
            ],
          ),
          const Spacer(),
          Text(
            sura.arabicSuraName,
            style: textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
