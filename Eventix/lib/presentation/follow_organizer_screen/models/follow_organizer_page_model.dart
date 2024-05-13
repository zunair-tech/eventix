import 'package:get/get.dart';

import 'follow_organizer_model.dart';

class FolowOrganizerPageModel {
  RxList<FollowOrganizerModel> categoryItemList =
      RxList( [
        FollowOrganizerModel(img: '🎶', title: 'Music', isFollowed: false.obs
        ),
        FollowOrganizerModel(img: '🤡', title: 'Festival', isFollowed: false.obs),
        FollowOrganizerModel(img: '🍔', title: 'Food', isFollowed: false.obs),
        FollowOrganizerModel(img: '🎬', title: 'Cinema', isFollowed: false.obs),
        FollowOrganizerModel(img: '📽', title: 'Theater', isFollowed: false.obs),
        FollowOrganizerModel(img: '⚽️', title: 'Sport', isFollowed: false.obs),
        FollowOrganizerModel(img: '🎮', title: 'Game', isFollowed: false.obs),
        FollowOrganizerModel(img: '🚙', title: 'Touring', isFollowed: false.obs),
        FollowOrganizerModel(img: '🏖', title: 'Beach', isFollowed: false.obs),
        FollowOrganizerModel(img: '🎎', title: 'Culture', isFollowed: false.obs),
        FollowOrganizerModel(img: '⛺️', title: 'Camping', isFollowed: false.obs),
       
        
        ]);
}
