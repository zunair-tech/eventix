import 'package:get/get.dart';
import '../../../core/utils/image_constant.dart';
import '../../favorite_events_page/models/favoriteevents_item_model.dart';

class SearchModel {
  RxList<FavoriteeventsItemModel> searchItemList = RxList([
    FavoriteeventsItemModel(img: ImageConstant.superr, name: 'Italian Super cup'),
    FavoriteeventsItemModel(img: ImageConstant.fight, name: 'Fury VS Usyk'),
    FavoriteeventsItemModel(
        img: ImageConstant.rabih, name: 'Rabih\'s Night'),
    FavoriteeventsItemModel(img: ImageConstant.Day, name: 'Day of Reckoning'),
    FavoriteeventsItemModel(
        img: ImageConstant.bestForYou1, name: 'RS TENNIS CUP (Females)'),
  ]);

  RxList<String> historyItemList = [
    'Sports',
    'cultural',
    'Music',
    'Festival',
  ].obs;
}
