import 'package:flutter/material.dart';
import 'package:food_waste_tracker/app.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
  runApp(App());
}
