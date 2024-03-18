import 'package:fixit/src/app_root.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  runApp(const AppRoot());
}
