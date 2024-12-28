import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami/app_them.dart';

class NavBarActiveIcon extends StatelessWidget {
  String backgroundImage;
  NavBarActiveIcon({required this.backgroundImage, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      height: MediaQuery.sizeOf(context).height * .036,
      width: MediaQuery.sizeOf(context).width * .14,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(66),
        color: AppThem.black.withOpacity(0.6),
      ),
      child: SvgPicture.asset(
        "assets/icons/$backgroundImage.svg",
        colorFilter: const ColorFilter.mode(AppThem.white, BlendMode.srcIn),
        height: 22, //MediaQuery.sizeOf(context).width * .074,
        width: 22, //MediaQuery.sizeOf(context).width * .074,
        fit: BoxFit.fill,
      ),
    );
  }
}
