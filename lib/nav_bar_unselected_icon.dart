import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBarUnselectedIcon extends StatelessWidget {
  String imageName;
  NavBarUnselectedIcon({required this.imageName, super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/$imageName.svg",
      height: MediaQuery.sizeOf(context).width * .051,
      width: MediaQuery.sizeOf(context).width * .051,
    );
  }
}
