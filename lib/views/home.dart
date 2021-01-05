import 'package:covid_tracker/custum_icon/covid_icons.dart';
import 'package:covid_tracker/modals/all_case.dart';
import 'package:covid_tracker/modals/country_info.dart';
import 'package:covid_tracker/services/services.dart';
import 'package:covid_tracker/views/all_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<AllCases> futureCases;
  @override
  void initState() {
    super.initState();
    futureCases = Services.fetchAllCases();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<AllCases>(
      future: futureCases,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return AllPageScreen(
            allCases: snapshot.data,
          );
        } else {}

        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
