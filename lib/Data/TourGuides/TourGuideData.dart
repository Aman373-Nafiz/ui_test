import 'package:ui_test/res/ImagePath.dart';

class TourGuideData {
  final String name,touristNum,local,TgImgPath,TimgPath;
  final double ratings;
   TourGuideData({
    required this.name,
    required this.touristNum,
    required this.local,
    required this.ratings,
    required this.TgImgPath,
    required this.TimgPath,
  });
}
  



// List of TourGuideData objects
List<TourGuideData> _tourGuides = [
  TourGuideData(
    name: 'Adam Parson',
    touristNum: '+20 Going',
    local: 'Local',
    ratings: 4.8,
    TgImgPath: tg1,
    TimgPath: group
  ),
  TourGuideData(
    name: 'Jhone Dei',
    touristNum: '+35 Going',
    local: 'Local',
    ratings: 5.0,
    TgImgPath:tg2,
    TimgPath: group,
  ),
];


List<TourGuideData> get tourGuides => _tourGuides;