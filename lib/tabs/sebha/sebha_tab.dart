import 'package:flutter/material.dart';
import 'package:islami/app_them.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
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
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/images/body_of_sebha.png",
                height: height * .40,
                width: width * .88,
              ),
              Column(
                children: [
                  Text(
                    "سبحان الله",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: AppThem.white),
                  ),
                  Text(
                    "33",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: AppThem.white),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
