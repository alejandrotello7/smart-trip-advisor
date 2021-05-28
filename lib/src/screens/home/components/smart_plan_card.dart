import 'package:flutter/material.dart';
import 'package:smart_trip_advisor/src/generated/planner.pb.dart';
import 'package:smart_trip_advisor/src/screens/trip_plan/plan_screen.dart';
import 'package:smart_trip_advisor/src/services/database.dart';
import 'package:smart_trip_advisor/src/services/extensions/extentions.dart';

class SmartPlanCard extends StatelessWidget {
  final SmartPlan plan;

  const SmartPlanCard({Key key, @required this.plan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PlanScreen(plan: plan),
      )),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(30.0, 5.0, 10.0, 5.0),
            child: Ink(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(110.0, 20.0, 10.0, 20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black26, blurRadius: 6.0)
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 125.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Trip to ${plan.arguments.cityName}",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w600),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2.0),
                            Text(
                              plan.arguments.startDate,
                              style: TextStyle(color: Colors.grey),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "€${plan.arguments.budget}",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).primaryColor),
                          ),
                          Text(
                            "Budget",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Text("adults: ${plan.arguments.adultsCount}" +
                      " | " +
                      "children: ${plan.arguments.childrenCount}"),
                  SizedBox(height: 10.0),
                  Wrap(
                    runSpacing: 5.0,
                    children: List.generate(
                        plan.arguments.interests.length,
                        (index) => _buildTag(
                            context, plan.arguments.interests[index])),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            top: 10.0,
            bottom: 10.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: _buildImage(),
            ),
          ),
        ],
      ),
    );
  }

  Image _buildImage() {
    var city = DataBase.loadCities()
        .where((element) => element.cityName == plan.arguments.cityName)
        .first;
    return Image(
      width: 120.0,
      image: AssetImage(city.imageUrl),
      fit: BoxFit.cover,
    );
  }

  Widget _buildTag(BuildContext context, String tag) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
      margin: EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(tag),
    );
  }
}
