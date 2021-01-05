import 'package:covid_tracker/custum_icon/covid_icons.dart';
import 'package:covid_tracker/functions/custum_function.dart';
import 'package:covid_tracker/modals/all_case.dart';
import 'package:covid_tracker/modals/country_info.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AllPageScreen extends StatelessWidget {
  // final CountryInfo countryInfo;
  final AllCases allCases;

  const AllPageScreen({this.allCases});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildCard(
          Icon(
            Covid.lungs_virus,
            size: 50.0,
            color: HexColor("#94B9D9"),
          ),
          "ACTIVE CASE",
          "#94B9D9",
          CustumFunction.formatDailyCase(allCases.todayCases),
          CustumFunction.formatTotalCase(allCases.cases),
        ),
        buildCard(
          Icon(
            Covid.virus_slash,
            size: 50.0,
            color: HexColor("#58D654"),
          ),
          "RECOVERED",
          "#58D654",
          CustumFunction.formatDailyCase(allCases.todayRecovered),
          CustumFunction.formatTotalCase(allCases.recovered),
        ),
        buildCard(
          Icon(
            Covid.bone_bite,
            size: 50.0,
            color: HexColor("#FF1A1A"),
          ),
          "DEATH",
          "#FF1A1A",
          CustumFunction.formatDailyCase(allCases.todayDeaths),
          CustumFunction.formatTotalCase(allCases.deaths),
        ),
      ],
    );
  }

  Widget buildCard(
      Icon icon, String title, String firstColor, newStat, totalStat) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color: HexColor("#17191A"),
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
                      icon,
                      // Icon(
                      //   Covid.lungs_virus,
                      //   size: 50.0,
                      //   color: Colors.blueAccent[400],
                      // ),
                      SizedBox(
                        width: 60.0,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 28.0,
                            color: HexColor(firstColor),
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
                    "+" + newStat.toString() + " today",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: HexColor(firstColor),
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
                    width: 150.0,
                  ),
                  Text(
                    totalStat.toString(),
                    style: TextStyle(
                        fontSize: 18.0,
                        color: HexColor("#979C90"),
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
