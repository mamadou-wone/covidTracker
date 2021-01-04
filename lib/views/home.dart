import 'package:covid_tracker/custum_icon/covid_icons.dart';
import 'package:covid_tracker/modals/country_info.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final CountryInfo countryInfo;

  const Home({this.countryInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Covid.lungs_virus,
                        size: 50.0,
                        color: Colors.blueAccent[400],
                      ),
                      SizedBox(
                        width: 60.0,
                      ),
                      Text(
                        "ACTIVE CASE",
                        style: TextStyle(
                            fontSize: 28.0,
                            color: Colors.blueAccent[400],
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                color: Colors.grey[600],
                height: 1.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 120.0,
                  ),
                  Text(
                    "+ 88,763 today",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueAccent[400],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 120.0,
                  ),
                  Text(
                    "+ 85.1 M total",
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
