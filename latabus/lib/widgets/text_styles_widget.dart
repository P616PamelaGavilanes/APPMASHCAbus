import 'package:flutter/cupertino.dart';

class TextStyles {
  static Widget labelLarge(String message, [Color color]){
    return Text(message,style:TextStyle(
      fontSize: 25.0,fontWeight: FontWeight.bold, color :color)
      );
  }

}