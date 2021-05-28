import 'package:flutter/material.dart';

import 'components/body.dart';

class SmartPlannerScreen extends StatefulWidget {
  @override
  _SmartPlannerScreenState createState() => _SmartPlannerScreenState();
}

class _SmartPlannerScreenState extends State<SmartPlannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        leading: CloseButton(),
      ),
    );
  }
}
