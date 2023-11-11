import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyApp {
  MyApp._();

  static String appName = 'HotelsGo_Task';
  static Size designSize = const Size(411.42857142857144, 867.4285714285714);

  static void setSystemUi() {
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      );
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }
}
