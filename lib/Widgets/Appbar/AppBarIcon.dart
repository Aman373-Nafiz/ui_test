import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarIcon extends StatelessWidget {
  final Color color;
  final String image;
  final double height;
  final double width;
  final double iconheight;
  final double iconwidth;
  AppBarIcon(
      {super.key,
      required this.color,
      required this.height,
      required this.width,
      required this.image,
      required this.iconheight,
      required this.iconwidth});

  @override
  Widget build(BuildContext context) {
    var sh = MediaQuery.sizeOf(context).height;
    var sw = MediaQuery.sizeOf(context).width;
    return Container(
      height: (height/sh)*sh,
      width: (width/sw)*sw,
      child: Center(
        child: Center(
          child: SvgPicture.asset(
            image,
            height: (iconheight/sh)*sh,
            width: (iconwidth/sw)*sw,
          ),
        ),
      ),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color, ),
    );
  }
}
