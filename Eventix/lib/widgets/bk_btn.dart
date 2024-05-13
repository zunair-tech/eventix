

import 'package:flutter/material.dart';


import '../core/app_export.dart';
//ignore: must_be_immutable
class BkBtn extends StatelessWidget {
Color? color;
   BkBtn({this.color}) ;

  @override
  Widget build(BuildContext context) {
bool isDark =Theme.of(context).brightness==Brightness.dark;

  

    return IconButton(
      
      onPressed:() => Get.back(),
    
     icon: Icon(Icons.arrow_back_rounded,
     color: color==null? 
     isDark?Colors.white:Colors.black : color,
     ));
 
 
  }
}