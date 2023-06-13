import 'package:flutter/material.dart';

class ScreenConfig {

  static late MediaQueryData? _mediaQueryData;
  static late double screenWidth;
  static late double  screenHeight;
  static late double blockWidth;
  static late double  blockHeight;

  static late double  _safeAreaHorizontal;
  static late double  _safeAreaVertical;
  static late double  safeWidth;
  static late double  safeHeight;

  void init(BuildContext context) {
     var orientation = MediaQuery.of(context).orientation;
     debugPrint('this is the orientation $orientation');
    _mediaQueryData = MediaQuery.of(context);
   if(orientation == Orientation.portrait) {
      screenWidth = _mediaQueryData!.size.width;
      screenHeight = _mediaQueryData!.size.height;
  }
    else {

      screenWidth = _mediaQueryData!.size.height;
      screenHeight = _mediaQueryData!.size.width;
    }
    blockWidth =  screenWidth / 100;
    blockHeight = screenHeight/ 100;

    _safeAreaHorizontal = (_mediaQueryData?.padding.left ?? 0) + (_mediaQueryData?.padding.right ?? 0);
    _safeAreaVertical = (_mediaQueryData?.padding.top ?? 0) + (_mediaQueryData?.padding.bottom ?? 0);
    safeWidth = (screenWidth - _safeAreaHorizontal )  / 100;
    safeHeight = (screenHeight- _safeAreaVertical -  AppBar().preferredSize.height )  / 100;
    debugPrint("topPadding $_safeAreaVertical");
     debugPrint("bottomPadding ${_mediaQueryData?.padding.bottom}");
     debugPrint("appBAr height: ${AppBar().preferredSize.height}");
  }
}