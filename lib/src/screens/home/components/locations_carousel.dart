import 'package:flutter/material.dart';
import 'package:smart_trip_advisor/src/generated/activities.pb.dart';
import 'package:smart_trip_advisor/src/models/top_destinations.dart';
import 'package:smart_trip_advisor/src/screens/activities/activities_screen.dart';

class LocationsCarousel extends StatelessWidget {
  const LocationsCarousel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topDestinations.length,
        itemBuilder: (context, index) => CityCard(city: topDestinations[index]),
      ),
    );
  }
}

class CityCard extends StatelessWidget {
  final City city;

  const CityCard({
    Key key,
    @required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      child: InkWell(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ActivitiesScreen(city: city),
        )),
        borderRadius: BorderRadius.circular(20.0),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              bottom: 10.0,
              child: Ink(
                height: 110.0,
                width: 190.0,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6.0,
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${city.activitiesCount} activities",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      city.description,
                      style: TextStyle(color: Colors.grey, fontSize: 12.0),
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6.0,
                        offset: Offset(0.0, 0.2))
                  ]),
              child: Stack(
                children: [
                  Hero(
                    tag: city.imageUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        image: AssetImage(city.imageUrl),
                        width: 180.0,
                        height: 180.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10.0,
                    left: 10.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          city.cityName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              size: 12.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              city.countryName,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
