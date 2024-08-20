import 'package:flutter/material.dart';
import 'package:ui_test/Widgets/TextView.dart';
import 'package:ui_test/res/Color.dart';
import 'package:ui_test/res/ImagePath.dart';
import '../../Data/TourGuides/TourGuideData.dart';

class TourGuideList extends StatelessWidget {
  const TourGuideList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tourGuides.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
            right: 35,
          ),
          child: Container(
            color: (index != 1) ? BgColor : blue,
            
            constraints: BoxConstraints(minHeight: 60),
            child: ListTile(
              subtitle: Row(
                children: [
                  Container(
                    height: 14,
                    width: 30,
                    child: Image.asset(
                      group,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  TextView(
                      text: tourGuides[index].touristNum,
                      color: (index != 1) ? TxtColor3 : BgColor,
                      fontSize: 10,
                      fontFamily: 'Poppins Regular',
                      fontWeight: FontWeight.w500),
                  SizedBox(
                    width: 7,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.5),
                    child: TextView(
                        text: tourGuides[index].local,
                        color: (index != 1) ? TxtColor3 : BgColor,
                        fontSize: 12,
                        fontFamily: 'Poppins Regular',
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              title: Row(
                children: [
                  TextView(
                    text: tourGuides[index].name,
                    color: (index != 1) ? TxtColor1 : BgColor,
                    fontSize: 16,
                    fontFamily: 'Poppins Regular',
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(width: 13),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: (index != 1) ? BgColor : blue,
                    ),
                    child: Image.asset(
                      star,
                      fit: BoxFit.fill,
                    ),
                    height: 12,
                    width: 12,
                  ),
                  SizedBox(width: 3),
                  TextView(
                    text: tourGuides[index].ratings.toString(),
                    color: (index != 1) ? TxtColor3 : BgColor,
                    fontSize: 12,
                    fontFamily: 'Regular Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              leading: Container(
                child: Image.asset(
                  tourGuides[index].TgImgPath,
                  fit: BoxFit.fill,
                ),
                height: 40,
                width: 40,
              ),
            ),
          ),
        );
      },
    );
  }
}
