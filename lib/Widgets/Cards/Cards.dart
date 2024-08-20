import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_test/Widgets/TextView.dart';
import 'package:ui_test/res/Color.dart';
import 'package:ui_test/res/ImagePath.dart';

class Cards extends StatelessWidget {
  final double height, width, Iheight, Iwidth;
  final String ImagePath, title, visitDays;
  final int selectedIndex;

  const Cards(
      {super.key,
      required this.height,
      required this.width,
      required this.Iheight,
      required this.Iwidth,
      required this.selectedIndex,
      required this.ImagePath,
      required this.title,
      required this.visitDays});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: (selectedIndex!=1)?BgColor:blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 5, left: 4, right: 4),
                    child: Image.asset(
                      ImagePath,
                      height: Iheight,
                      width: Iwidth,
                      fit: BoxFit.fill,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
                SizedBox(height: 9,),
                Row(children: [Padding(padding: EdgeInsets.only(left:9),child: TextView(text: title, color: (selectedIndex==1)?BgColor:TxtColor2, fontSize: 13, fontFamily: 'Poppins Regular', fontWeight: FontWeight.w600),)],),
                SizedBox(height:(selectedIndex!=1)?30:14 ,),
                Row(children: [Padding(padding: EdgeInsets.only(left:9),child:TextView(text: visitDays, color: (selectedIndex==1)?BgColor:blue, fontSize: 12, fontFamily: 'Poppins Regular', fontWeight: FontWeight.w400),)],)
              ],
            ),
          )),
    );
  }
}
