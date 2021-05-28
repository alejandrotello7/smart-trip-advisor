import 'package:flutter/material.dart';
import 'package:smart_trip_advisor/src/generated/planner.pb.dart';
import 'package:smart_trip_advisor/src/screens/activities/components/activity_card.dart';
import 'package:smart_trip_advisor/src/services/extensions/extentions.dart';

class PlanScreen extends StatelessWidget {
  final SmartPlan plan;

  PlanScreen({Key key, @required this.plan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 60.0, top: 20.0),
              child: Text(
                "Here is your planned trip to ${plan.arguments.cityName}",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                itemCount: plan.activities.length + plan.arguments.durationDays,
                itemBuilder: (BuildContext context, int index) {
                  int offset = (index ~/ 6) + 1;
                  if (index % 6 == 0) {
                    return _buildListSection(offset, context);
                  } else {
                    return ActivityCard(
                        activity: plan.activities[index - offset]);
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildListSection(int day, BuildContext context) {
    DateTime startDate = parseDateString(plan.arguments.startDate);
    DateTime date = startDate.add(Duration(days: day - 1));
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 10.0, 40.0, 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(bottom: 5.0, left: 10.0, right: 10.0),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.timeline,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(width: 10.0),
                Text(
                  "Day $day",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Text(
                  date.displayString,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1.0,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
