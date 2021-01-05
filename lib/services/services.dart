import 'dart:convert';

import 'package:covid_tracker/modals/all_case.dart';
import 'package:covid_tracker/modals/country_info.dart';
import 'package:http/http.dart' as http;

class Services {
  static var client = http.Client();

  static var all = http.Client();

  static Future<List<CountryInfo>> fetchInfo() async {
    var response =
        await client.get("https://disease.sh/v3/covid-19/countries/");

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return countryInfoFromJson(jsonString);
    } else {
      return null;
    }
  }

  static Future<AllCases> fetchAllCases() async {
    var response = await all.get("https://disease.sh/v3/covid-19/all/");

    if (response.statusCode == 200) {
      return AllCases.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }
}
