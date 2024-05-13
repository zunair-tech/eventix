import 'package:Eventix/core/app_export.dart';
import 'favoriteevents_item_model.dart';

class FavoriteEventsModel {
  RxList<FavoriteeventsItemModel> favoriteeventsItemList = RxList([
    FavoriteeventsItemModel(
        img: ImageConstant.event1, name: 'Inter Miami VS Al Hilal'),
    FavoriteeventsItemModel(
        img: ImageConstant.event2, name: 'Al Hilal VS Al Nasser'),
    FavoriteeventsItemModel(
        img: ImageConstant.event3, name: 'Inter Miami VS Al Nasser'),
    FavoriteeventsItemModel(
        img: ImageConstant.event5,
        name: 'Rammadan Season'),
    FavoriteeventsItemModel(
        img: ImageConstant.event4, name: 'Liyaly Al Direah')
  ]);
}
