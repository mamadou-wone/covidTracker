import 'package:covid_tracker/views/discover_page.dart';
import 'package:covid_tracker/views/home.dart';
import 'package:covid_tracker/views/hot_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    HotPage(),
    Discover(),
    PlaceholderWidget(Colors.green)
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#222426"),
      appBar: AppBar(
        title: Text(
          "Covid Tracker",
          style: TextStyle(fontFamily: "Arial", fontSize: 25.0),
        ),
        backgroundColor: HexColor("#060505"),
        actions: [
          IconButton(
              icon: Icon(
                Icons.settings,
                color: HexColor("#7A7676"),
              ),
              onPressed: () {
                // print(contryController.allCasesList.length);
              })
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        backgroundColor: HexColor("#060505"),
        unselectedItemColor: HexColor("#7A7676"),
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.home,
              size: 30.0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.whatshot,
              size: 30.0,
            ),
            label: 'Hot',
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.search,
              size: 30.0,
            ),
            label: 'Discover',
          ),
        ],
      ),
      // backgroundColor: Colors.white10,
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
