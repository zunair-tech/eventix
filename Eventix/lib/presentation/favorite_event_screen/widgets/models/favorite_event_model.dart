
import '../../../../core/app_export.dart';

class FavoriteEventrModel {

  String title, img;
  Rx<bool> isSelected;

  FavoriteEventrModel(
    {
      required this.title,required this.img,
      required this.isSelected
    }
  );
 }
