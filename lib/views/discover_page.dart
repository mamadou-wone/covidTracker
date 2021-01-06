import 'package:covid_tracker/controllers/country_controller.dart';
import 'package:covid_tracker/functions/custum_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Discover extends StatelessWidget {
  CountryController countryController = Get.put(CountryController());
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: countryController.countryList.length,
      itemBuilder: (context, index) {
        return ListTile(
          trailing: IconButton(
            icon: Icon(Icons.navigate_next),
            color: Colors.white,
            onPressed: () {
              // print(countryController.countryList[index].country);
            },
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                countryController.countryList[index].countryInfo.flag),
          ),
          subtitle: Text(
              CustumFunction.formatDailyCase(
                  countryController.countryList[index].cases),
              style: TextStyle(color: Colors.white)),
          title: Text(
            countryController.countryList[index].country,
            style: TextStyle(color: Colors.white),
          ),
          selected: true,
          onTap: () {
            print(countryController.countryList[index].country);
          },
        );
      },
    );
  }
}
