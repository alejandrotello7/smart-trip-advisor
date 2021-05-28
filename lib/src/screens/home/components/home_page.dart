import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:smart_trip_advisor/src/components/city_search_field.dart';
import 'package:smart_trip_advisor/src/components/default_button.dart';
import 'package:smart_trip_advisor/src/generated/activities.pb.dart';
import 'package:smart_trip_advisor/src/models/top_destinations.dart';
import 'package:smart_trip_advisor/src/screens/activities/activities_screen.dart';
import 'package:smart_trip_advisor/src/services/database.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'locations_carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  City _selectedCity;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 80.0, top: 20.0),
              child: Text(
                "What is your Destination today?",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            //SearchField(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ValueListenableBuilder(
                valueListenable: DataBase.citiesBox().listenable(),
                builder: (_, Box<List> box, __) {
                  return CitySearchField(
                    suggestions: box
                        .get(DataBase.CITIES_KEY, defaultValue: topDestinations)
                        .cast<City>(),
                    onSelection: (selectedCity) =>
                        setState(() => _selectedCity = selectedCity),
                  );
                },
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              child: DefaultButton(
                icon: Icons.list_alt,
                text: "Browse Activities",
                press: _selectedCity == null
                    ? null
                    : () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ActivitiesScreen(city: _selectedCity),
                          ),
                        ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 80.0, bottom: 10.0),
              child: Text(
                "Top Destinations",
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.3),
              ),
            ),
            LocationsCarousel(),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 80.0, bottom: 10.0),
              child: Text(
                "Popular Activities",
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
