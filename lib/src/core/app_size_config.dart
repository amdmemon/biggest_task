
import 'package:flutter/cupertino.dart';
import 'dart:math';

extension SizeExtentions on num{

  double sp(context){
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    const figmaHeight =812; ///change figma design size
    const figmaWidth =375; /// change figma width size
    final scaleHeight = deviceHeight / figmaHeight;
    final scaleWidth = deviceWidth / figmaWidth;
    return this * min(scaleHeight, scaleWidth);

  }

  double h(context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    const figmaHeight =812; ///change figma design height
    final scaleHeight = deviceHeight / figmaHeight;
    return this *  scaleHeight;

  }


  double w(context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    const figmaWidth =375; ///change figma design width
    final scaleWidth = deviceWidth / figmaWidth;
    return this * scaleWidth;

  }

}