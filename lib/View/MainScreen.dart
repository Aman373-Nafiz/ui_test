import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_test/Data/Activities/ActivitiesData.dart';
import 'package:ui_test/Data/Card/CardData.dart';
import 'package:ui_test/Widgets/ActivitiesGrid/ActivitiesGrid.dart';
import 'package:ui_test/Widgets/Appbar/AppBarIcon.dart';
import 'package:ui_test/Widgets/Cards/Cards.dart';
import 'package:ui_test/Widgets/TextView.dart';
import 'package:ui_test/res/Color.dart';
import 'package:ui_test/res/ImagePath.dart';

import '../Widgets/TourGuides/TourGuideList.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: BgColor,
            appBar: AppBar(
              backgroundColor: BgColor,
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 21, top: 10),
                  child: AppBarIcon(
                      color: IconBgColor,
                      height: 44,
                      width: 44,
                      image: Notifications,
                      iconheight: 22,
                      iconwidth: 20),
                )
              ],
              leading: Padding(
                padding: EdgeInsets.only(left: 21, top: 10),
                child: AppBarIcon(
                    color: IconBgColor,
                    height: 44,
                    width: 44,
                    image: Arrow,
                    iconheight: 22,
                    iconwidth: 20),
              ),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                  padding: EdgeInsets.only(left: 23),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextView(
                              text: 'Pro Tour',
                              color: TxtColor1,
                              fontSize: 24,
                              fontFamily: 'Poppins Regular',
                              fontWeight: FontWeight.w600),
                          Padding(
                            padding: EdgeInsets.only(right: 26),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: '\$50',
                                  style: TextStyle(
                                      color: blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins Regular')),
                              TextSpan(
                                  text: '/Person',
                                  style: TextStyle(
                                      color: TxtColor1,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins Regular'))
                            ])),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 2.75),
                          child: Center(
                            child: Container(
                              child: SvgPicture.asset(
                                Travel,
                                height: 290,
                                width: 220,
                                fit: BoxFit.contain,
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 23,
                      ),
                      Row(
                        children: [
                          TextView(
                              text: 'Select Visitor type:',
                              color: TxtColor2,
                              fontSize: 15,
                              fontFamily: 'Poppins Regular',
                              fontWeight: FontWeight.w600)
                        ],
                      ),
                      SizedBox(
                        height: 13.75,
                      ),
                      Container(
                          height: 225,
                          width: double.infinity,
                          child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Padding(
                                    padding: EdgeInsets.only(right: 14),
                                    child: Cards(
                                        height: 205,
                                        width: 160,
                                        Iheight: 119,
                                        Iwidth: 150,
                                        selectedIndex: index,
                                        ImagePath: Cdata[index].ImagePath,
                                        title: Cdata[index].title,
                                        visitDays: Cdata[index].visitDays),
                                  ))),
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        children: [
                          TextView(
                              text: 'Select Activities :',
                              color: TxtColor2,
                              fontSize: 16,
                              fontFamily: 'Poppins Regular',
                              fontWeight: FontWeight.w600)
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      SizedBox(
                          height: 250,
                          child: Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: GridActivities(),
                          )),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextView(
                              text: 'Available Tour Guides',
                              color: TxtColor1,
                              fontSize: 18,
                              fontFamily: 'Poppins Regular',
                              fontWeight: FontWeight.w600),
                          Padding(
                              padding: EdgeInsets.only(right: 29),
                              child: TextView(
                                  text: 'View All',
                                  color: blue,
                                  fontSize: 11,
                                  fontFamily: 'Poppins Regular',
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 160, // You can adjust the height as needed
                        child: TourGuideList(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 117,
                            child: Center(
                              child: TextView(
                                  text: 'Cancel',
                                  color: TxtColor3,
                                  fontSize: 14,
                                  fontFamily: 'Poppins Regular',
                                  fontWeight: FontWeight.w500),
                            ),
                            decoration: BoxDecoration(
                                color: BgColor,
                                border:
                                    Border.all(color: TxtColor3, width: 1.5),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 28),
                            child: Container(
                              height: 40,
                              width: 117,
                              child: Center(
                                child: TextView(
                                    text: 'Book Now',
                                    color: BgColor,
                                    fontSize: 14,
                                    fontFamily: 'Poppins Regular',
                                    fontWeight: FontWeight.w500),
                              ),
                              decoration: BoxDecoration(
                                  color: blue,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                      )
                    ],
                  )),
            )));
  }
}
