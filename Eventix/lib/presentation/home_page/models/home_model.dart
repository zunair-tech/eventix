import 'dart:io';

import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/home_page/controller/home_controller.dart';
import 'listcountry_one_item_model.dart';

class HomeModel {
  RxList<ListcountryOneItemModel> listcountryOneItemList = RxList([
    ListcountryOneItemModel(
      img: ImageConstant.Day,
      name: 'MDL BEAST',
      isFav: false.obs,
    ),
    // ListcountryOneItemModel(
    //   img: ImageConstant.Day,
    //   name: 'Color Festival',
    //   isFav: false.obs,
    // ),
  ]);

  // RxList<ListcountryOneItemModel> listunsplashk4cvkfs5ctaItemList = RxList([
  //   ListcountryOneItemModel(
  //       img: ImageConstant.CR7,
  //       isFav: false.obs,
  //       name: 'CR7 Exhibtion'),
  //   ListcountryOneItemModel(
  //     img: ImageConstant.Majeed,
  //     name: 'Abdulmajeed Abdullah concert',
  //     isFav: false.obs,
  //   ),
  // ]);

 RxList<ListcountryOneItemModel> listunsplashk4cvkfs5ctaItemList = RxList([
    ListcountryOneItemModel(
      img: '',
      isFav: false.obs,
      name: 'Image 1',
    ),
    ListcountryOneItemModel(
      img: '',
      name: 'Image 2',
      isFav: false.obs,
    ),
  ]);

  // Method to upload images
  void uploadImages(List<File> imageFiles) {
    // Assuming imageFiles contains the selected images to upload
    for (int i = 0; i < imageFiles.length; i++) {
      // Update the RxList with the path of the uploaded image
      listunsplashk4cvkfs5ctaItemList[i].img = imageFiles[i].path;
    }
    // Check if both images are uploaded
    if (listunsplashk4cvkfs5ctaItemList[0].img.isNotEmpty &&
        listunsplashk4cvkfs5ctaItemList[1].img.isNotEmpty) {
      // Hide the button if both images are uploaded
      var controller = Get.find<HomeController>();
      controller.isButtonVisible.value = false;
    }
  }
}
