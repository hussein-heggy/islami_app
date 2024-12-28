import 'package:flutter/material.dart';
import 'package:islami/app_them.dart';
import 'package:islami/intro/intro.dart';

class IntroPageViewItem extends StatelessWidget {
  Intro intro;
  IntroPageViewItem({required this.intro, super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Image.asset(
          "${intro.overviewImage}",
          height: MediaQuery.sizeOf(context).height * .445,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Expanded(
          child: Text(
            "${intro.welcomeText}",
            style: textTheme.headlineSmall!.copyWith(color: AppThem.primary),
          ),
        ),
        Expanded(
          child: Text(
            "${intro.overviewText}",
            style: textTheme.headlineSmall!.copyWith(color: AppThem.primary),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
