import '../../../core/app_export.dart';

class FavoriteeventsItemModel {

  String img, name;
  Rx<bool> isFav=false.obs;
  
  FavoriteeventsItemModel({
    required this.img,required this.name,

     });
 }
