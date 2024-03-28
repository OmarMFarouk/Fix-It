import 'package:fixit/src/app_root.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    ); // To turn off landscape mode
    runApp(const AppRoot());
  }
}
