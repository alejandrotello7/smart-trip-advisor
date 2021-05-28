import 'package:flutter/material.dart';
import 'package:smart_trip_advisor/src/generated/activities.pb.dart';
import 'components/body.dart';

class ActivitiesScreen extends StatelessWidget {
  final City city;

  const ActivitiesScreen({Key key, @required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(
        city: city,
      ),
      extendBodyBehindAppBar: true,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
            size: 25.0,
          ),
          tooltip: "Search",
          onPressed: () {},
        )
      ],
    );
  }
}
