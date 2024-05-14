import 'package:get/get.dart';

class ListcountryOneItemModel {
  String img, name;
  RxBool isFav;

  ListcountryOneItemModel({
    required this.img,
    required this.name,
    required bool isFav,
  }) : isFav = RxBool(isFav);

  Map<String, dynamic> toMap() {
    return {
      'img': img,
      'name': name,
      'isFav': isFav.value ? 1 : 0,
    };
  }
}
