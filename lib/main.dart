import 'package:flutter/material.dart';
import 'package:hotelsgo_task/Core/app/app.dart';
import 'package:hotelsgo_task/Core/app/app_info.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MyApp.setSystemUi();
  runApp(const App());
}
