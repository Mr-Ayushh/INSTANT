import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins-SemiBold.ttf');
  }

  static TextStyle headerTextStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 17.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins-SemiBold.ttf');
  }

  static TextStyle lightTextStyle() {
    return const TextStyle(
        color: Colors.black38,
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins-SemiBold.ttf');
  }

  static TextStyle semiboldTextStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins-SemiBold.ttf');
  }
}
