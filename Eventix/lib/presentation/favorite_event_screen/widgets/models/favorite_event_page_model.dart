import 'package:get/get.dart';

import 'favorite_event_model.dart';

class FavoriteEventPageModel {
  RxList<FavoriteEventrModel> categoryItemList = RxList([
    FavoriteEventrModel(img: '🎶', title: 'Music', isSelected: false.obs),
    FavoriteEventrModel(img: '🤡', title: 'Festival', isSelected: false.obs),
    FavoriteEventrModel(img: '⚽️', title: 'Sport', isSelected: false.obs),
    FavoriteEventrModel(img: '🎎', title: 'Culture', isSelected: false.obs),
    FavoriteEventrModel(
        img: '📚', title: 'Workshops&Siminars', isSelected: false.obs),
  ]);
}
