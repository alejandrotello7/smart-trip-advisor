import 'package:flutter/material.dart';
import 'package:smart_trip_advisor/src/screens/home/components/plans_page.dart';
import 'package:smart_trip_advisor/src/services/database.dart';
import 'package:smart_trip_advisor/src/services/grpc_client.dart';
import 'package:smart_trip_advisor/src/services/size_config.dart';

import 'components/home_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomNavIndex = 0;

  @override
  void initState() {
    super.initState();
    _initCities();
  }

  _initCities() async {
    GrpcClient().getCities().toList().then(
      (value) => DataBase.storeCities(value),
      onError: (e) {
        print(e);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: _bottomNavIndex == 0 ? HomePage() : PlansPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            label: "My Plans",
          ),
        ],
        onTap: (value) => this.setState(() {
          _bottomNavIndex = value;
        }),
      ),
    );
  }
}
