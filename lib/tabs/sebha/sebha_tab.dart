import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islami/app_them.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

int sebhaCount = 0;
List<String> tasbehat = [
  "سبحان الله",
  "الحمد لله",
  "الله أكبر",
  "استغفر الله",
  "لا اله الا الله ",
  "لا حول ولاقوة \n الا بالله",
];
double finalAngle = 0.0;

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: AppThem.white),
          ),
        ),
        Row(
          children: [
            SizedBox(width: width * .48),
            Image.asset(
              "assets/images/head_of_sebha.png",
              height: height * .092,
              width: width * .16,
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              sebhaCount++;
              finalAngle += (2 * pi / 33) * 11;
            });
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Transform.rotate(
                angle: finalAngle,
                origin: const Offset(0, 0),
                child: Container(
                  height: height * .40,
                  width: width * .88,
                  child: Image.asset(
                    "assets/images/body_of_sebha.png",
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    tasbehChange(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: AppThem.white),
                  ),
                  Text(
                    "$sebhaCount",
                    style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: AppThem.white),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  int tasbehNamber = 0;
  String tasbehChange() {
    if (sebhaCount % 33 == 0) {
      tasbehNamber = (sebhaCount ~/ 33);
      if (tasbehNamber >= tasbehat.length) {
        tasbehNamber = tasbehat.length - 1;
      }
      return tasbehat[tasbehNamber];
    }

    return tasbehat[tasbehNamber];
  }
}
