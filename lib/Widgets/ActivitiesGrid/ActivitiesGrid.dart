import 'package:flutter/material.dart';
import 'package:ui_test/Data/Activities/ActivitiesData.dart';
import 'package:ui_test/Widgets/TextView.dart';
import 'package:ui_test/res/Color.dart';

class GridActivities extends StatelessWidget {
  const GridActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 4,
        ),
        itemCount: aData.length,
        itemBuilder: (context, index) {
          return Container(
            height: 35,width: 155,
            decoration: BoxDecoration(
                color: (index == 1 || index == 6) ? blue : BgColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: (index == 1 || index == 6) ? BgColor : TxtColor3,
                    width: 1.5)),
            child: Center(
              child: TextView(
                  text: aData[index],
                  color: (index == 1 || index == 6) ? BgColor : TxtColor3,
                  fontSize: 14,
                  fontFamily: 'Poppins Regular',
                  fontWeight: FontWeight.w400),
            ),
          );
        });
  }
}
