import 'package:flutter/material.dart';

class AppNavigation {
  static push(context, Widget destination) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => destination));
  }

  static pushR(context, Widget destination) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => destination));
  }

  static pop(context, Widget destination) {
    Navigator.pop(context);
  }
}
