import '../../../core/app_export.dart';

class FollowOrganizerModel {

  String title, img;
  Rx<bool> isFollowed;

  FollowOrganizerModel(
    {
      required this.title,required this.img,
      required this.isFollowed
    }
  );
 }
