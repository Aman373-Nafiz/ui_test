import '../../res/ImagePath.dart';

class CardData {
  final String ImagePath, title, visitDays;
  CardData(
      {required this.ImagePath, required this.title, required this.visitDays});
}

List<CardData> Card = [
  CardData(
      ImagePath: img1, title: 'Stay Over-Visitiors', visitDays: '5-10 days'),
  CardData(
      ImagePath: img2,
      title: 'Cruise Ship \nPassenger',
      visitDays: '1 day days'),
  CardData(
      ImagePath: img1, title: 'Stay Over-Visitiors', visitDays: '5-10 days'),
];

List get Cdata => Card;
