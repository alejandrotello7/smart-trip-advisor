import 'package:flutter/material.dart';
import 'package:smart_trip_advisor/src/generated/activities.pb.dart';
import 'package:smart_trip_advisor/src/services/extensions/extentions.dart';

import '../../../services/size_config.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;

  const ActivityCard({
    Key key,
    @required this.activity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          width: SizeConfig.screenWidth,
          margin: EdgeInsets.fromLTRB(30.0, 5.0, 10.0, 5.0),
          padding: EdgeInsets.fromLTRB(110.0, 20.0, 10.0, 20.0),
          height: 160.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 6.0)]),
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
                    child: Text(
                      activity.name,
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w600),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        activity.printablePrice,
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColor),
                      ),
                      Text(
                        activity.pricePer,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
              Text(
                activity.description,
                style: TextStyle(color: Colors.grey),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 10.0),
              Text(activity.openingTime + " - " + activity.closingTime),
              SizedBox(height: 10.0),
              Row(
                children: List.generate(activity.tags.length,
                    (index) => _buildTag(context, activity.tags[index])),
              )
            ],
          ),
        ),
        Positioned(
          left: 10.0,
          top: 10.0,
          bottom: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image(
              width: 120.0,
              image: AssetImage(activity.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
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
