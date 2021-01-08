import 'dart:ui';

import 'package:covid_tracker/controllers/country_controller.dart';
import 'package:covid_tracker/views/home.dart';
import 'package:covid_tracker/views/hot_page.dart';
import 'package:covid_tracker/views/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

// 08/01/2021
class MyApp extends StatelessWidget {
  CountryController contryController = Get.put(CountryController());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}
