import 'package:covid_tracker/controllers/country_controller.dart';
import 'package:covid_tracker/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

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
      home: Scaffold(
        // appBar: AppBar(
        //   actions: [
        //     IconButton(
        //         icon: Icon(Icons.ac_unit_outlined),
        //         onPressed: () {
        //           // print(contryController.allCasesList.length);
        //         })
        //   ],
        // ),
        backgroundColor: Colors.white10,
        body: SafeArea(
          child: Obx(
            () => ListView.builder(
              itemCount: contryController.countryList.length,
              itemBuilder: (context, index) {
                return Home(countryInfo: contryController.countryList[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
