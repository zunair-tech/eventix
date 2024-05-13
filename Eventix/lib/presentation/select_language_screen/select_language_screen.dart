

import '../../core/app_export.dart';

import '../../widgets/bg_img.dart';
import '../../widgets/bk_btn.dart';
import '../../widgets/spacing.dart';
import 'controller/select_language_controller.dart';

import 'package:flutter/material.dart';
//ignore: must_be_immutable
class SelectLanguageScreen extends GetWidget<SelectLanguageController> {
 
var controller = Get.put(SelectLanguageController());
  @override
  Widget build(BuildContext context) {

    return 
   SafeArea(
      top: false,
     
        child: Scaffold(
        backgroundColor: ColorConstant.gray5002,
        body: Stack(
        
          children: [
            BgImage(),
             Column(
              children: [
                Padding(
                  padding: getPadding(
                    left: 4,
                    right: 24,
                    top: 30,
                  ),
                  child: Row(
                    children: [
                      BkBtn(),
                      Text(
                        "lbl_choose_country".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitMedium18Gray900,
                      ),
                    ],
                  ),
                ),
         VerticalSpace(height: 40),
         
           Expanded(
             child: Container(
                width: size.width,
                decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder24,
                ),
                padding: getPadding(left: 24,
                top: 20,
                right: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                                    padding: getPadding(
                                      top: 16,
                                    ),
                                    child: InkWell(
                                       onTap: () => controller.changeLang('en'),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "🇺🇸",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtChillaxRegular24,
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 12,
                                                  top: 8,
                                                  bottom: 2,
                                                ),
                                                child: Text(
                                                  'English',
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                   style:controller.locale==Locale('en')?
                                                    AppStyle.txtOutfitLight18Teal900:
                                                     AppStyle.txtOutfitLight18,
                                                ),
                                              ),
                                            ],
                                          ),
                                       
                                         controller.locale==Locale('en')?   Icon(Icons.check_rounded,
                       color: ColorConstant.teal300,

                       ):SizedBox()
                                        ],
                                      ),
                                    ),
                                  ),
                VerticalSpace(height: 16),
                
                    InkWell(
                      onTap: () => controller.changeLang('ar'),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                                          children: [
                                            Text(
                                              '🇸🇦',
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtChillaxRegular24,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 12,
                                                top: 6,
                                                bottom: 4,
                                              ),
                                              child: Text(
                                                'العربية',
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:controller.locale==Locale('ar')?
                                                 AppStyle.txtOutfitLight18Teal900:
                                                 AppStyle.txtOutfitLight18,
                                              ),
                                            ),
                                          ],
                                        ),
                    controller.locale==Locale('ar')?   Icon(Icons.check_rounded,
                       color: ColorConstant.teal300,

                       ):SizedBox()
                       
                       
                        ],
                      ),
                    ),
                  
                  
                 ],
                ),
              ),
           ),
         
              ],
            ),
          ],
        ),
      ));

  }
}
