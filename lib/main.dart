import 'package:flutter/material.dart';
import 'package:smart_trip_advisor/src/screens/home/home_screen.dart';
import 'package:smart_trip_advisor/src/services/database.dart';

void main() async {
  await DataBase.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Trip Advisor',
      theme: ThemeData(
          /*primarySwatch: Colors.teal,
          primaryColor: Colors.teal.shade800,
          accentColor: Colors.tealAccent.shade100,
          buttonColor: Colors.teal.shade800*/
          primarySwatch: Colors.red,
          accentColor: Colors.red.shade200,
          buttonColor: Colors.red.shade800),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
