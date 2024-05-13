

import 'package:flutter/material.dart';

import '../core/app_export.dart';
//ignore: must_be_immutable
class BgImage extends StatelessWidget {
   BgImage({this.height,this.width
   
   }) ;
   double? width,height;

  @override
  Widget build(BuildContext context) {
    return  Align(
                                    alignment: AlignmentDirectional.topStart,
                                    child: CustomImageView(
                                      margin: getMargin(
                                        top: 20
                                      ),
                                      imagePath: ImageConstant.bgImage,
                                      width:width?? getHorizontalSize(155),
                                      height:height?? getVerticalSize(60),
                                      fit: BoxFit.fill,
                                    
                                    
                                    ),
                                  );
  }
}