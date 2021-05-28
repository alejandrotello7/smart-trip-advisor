import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smart_trip_advisor/src/components/default_button.dart';
import 'package:smart_trip_advisor/src/generated/planner.pb.dart';
import 'package:smart_trip_advisor/src/screens/smart_planner/smart_planner_screen.dart';
import 'package:smart_trip_advisor/src/services/database.dart';

import 'smart_plan_card.dart';

class PlansPage extends StatefulWidget {
  @override
  _PlansPageState createState() => _PlansPageState();
}

class _PlansPageState extends State<PlansPage> {
  List<SmartPlan> plans;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          ValueListenableBuilder(
              valueListenable: DataBase.plansBoxValueListenable(),
              builder: (BuildContext context, _, __) {
                plans = DataBase.loadPlans();
                return ListView.builder(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  itemCount: plans.length,
                  itemBuilder: (context, index) {
                    return SmartPlanCard(plan: plans[index]);
                  },
                );
              }),
          Container(
            width: 160.0,
            margin: EdgeInsets.only(bottom: 20.0, right: 20.0),
            child: DefaultButton(
              text: "New Plan",
              icon: Icons.add,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SmartPlannerScreen(),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
