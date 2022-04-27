import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mausam/Activity/location.dart';
import 'Activity/home.dart';
import 'Activity/loading.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => Loading(),
      "/location": (context) => Location(),
      "/home": (context) => Home(),
    },
  ));
}
