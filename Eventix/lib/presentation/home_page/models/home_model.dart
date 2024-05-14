import 'package:get/get.dart';
import 'package:Eventix/core/app_export.dart';
import 'listcountry_one_item_model.dart';

class HomeModel {
  RxList<ListcountryOneItemModel> listcountryOneItemList = RxList([
    ListcountryOneItemModel(
      img: ImageConstant.Day,
      name: 'MDL BEAST',
      isFav: false,
    ),
    // ListcountryOneItemModel(
    //   img: ImageConstant.Day,
    //   name: 'Color Festival',
    //   isFav: false.obs,
    // ),
  ]);

  RxList<ListcountryOneItemModel> listunsplashk4cvkfs5ctaItemList = RxList([
    ListcountryOneItemModel(
      img: ImageConstant.CR7,
      name: 'CR7 Exhibition',
      isFav: false,
    ),
    ListcountryOneItemModel(
      img: ImageConstant.Majeed,
      name: 'Abdulmajeed Abdullah concert',
      isFav: false,
    ),
  ]);
}
