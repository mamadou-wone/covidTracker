import 'package:covid_tracker/modals/all_case.dart';
import 'package:covid_tracker/modals/country_info.dart';
import 'package:covid_tracker/services/services.dart';
import 'package:get/state_manager.dart';
// import 'package:get/utils.dart';

class CountryController extends GetxController {
  var countryList = List<CountryInfo>().obs;
  var allCasesList = List<AllCases>().obs;

  @override
  void onInit() {
    displayInfo();
    // displayAllCases();
    super.onInit();
  }

  void displayInfo() async {
    var info = await Services.fetchInfo();
    if (info != null) {
      countryList.assignAll(info);
    }
  }

  // void displayAllCases() async {
  //   var totalCase = await Services.fetchAllCases();
  //   if (totalCase != null) {
  //     allCasesList.assignAll(totalCase);
  //   }
  // }
}
