import 'package:get/get.dart';
import '../../../core/utils/image_constant.dart';
import '../../favorite_events_page/models/favoriteevents_item_model.dart';

class OrganizerProfileEventsModel {
  RxList<FavoriteeventsItemModel> eventItemList =RxList([ 
        FavoriteeventsItemModel( img: ImageConstant.event1,name: 'International Skateboard Festival'),
        FavoriteeventsItemModel( img: ImageConstant.event2,name: 'Visual Projection Art Exhibiton'),
        FavoriteeventsItemModel( img: ImageConstant.event3,name: 'Theatre: Talking to the Moon (2021)'),
        FavoriteeventsItemModel( img: ImageConstant.event5,name: 'Asia Dance Competition Audition | December'),
        FavoriteeventsItemModel( img: ImageConstant.event4,name: 'Shadow Puppet Private Show'),
      ]);
}
