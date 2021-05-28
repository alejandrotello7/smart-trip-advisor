import 'package:flutter/material.dart';
import 'package:smart_trip_advisor/src/components/city_search_field.dart';
import 'package:smart_trip_advisor/src/components/default_button.dart';
import 'package:smart_trip_advisor/src/generated/planner.pb.dart';
import 'package:smart_trip_advisor/src/models/activities.dart';
import 'package:smart_trip_advisor/src/models/top_destinations.dart';
import 'package:smart_trip_advisor/src/screens/trip_plan/plan_screen.dart';
import 'package:smart_trip_advisor/src/services/database.dart';
import 'package:smart_trip_advisor/src/services/grpc_client.dart';
import 'package:smart_trip_advisor/src/services/smart_planner.dart';
import 'package:smart_trip_advisor/src/services/extensions/extentions.dart';

import 'my_dropdown.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final texts = [
    "What is your Destination?",
    "What is your budget?",
    "Who are you travelling with?",
    "When is your trip?",
    "What are you most interested in?",
    "Almost done!\n\nShould we consider weather forecast?",
  ];

  int pagesCount;
  int currentPage = 0;
  bool loading = false;

  Map<String, bool> selectableTags;
  SmartPlannerArguments _arguments;

  @override
  void initState() {
    super.initState();
    pagesCount = texts.length;

    _arguments = SmartPlannerArguments(
        budget: 0,
        adultsCount: 1,
        childrenCount: 0,
        startDate: DateTime.now().displayString,
        durationDays: 1,
        useWeatherForecast: true);

    selectableTags = Map.fromIterable(
      tags,
      key: (element) => element,
      value: (element) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView.builder(
          itemCount: pagesCount,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    texts[index],
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.0),
                  _buildPageContent(context, index)
                ],
              ),
            );
          },
          onPageChanged: (value) => setState(() {
            currentPage = value;
          }),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 150.0),
          child: _buildPageIndicator(Theme.of(context).primaryColor),
        ),
        Visibility(
          visible: currentPage == pagesCount - 1,
          child: Container(
            alignment: Alignment.bottomCenter,
            width: 160.0,
            margin: EdgeInsets.only(bottom: 20.0),
            child: loading
                ? CircularProgressIndicator(
                    backgroundColor: Colors.red,
                  )
                : DefaultButton(
                    text: "Generate",
                    icon: Icons.check,
                    press: _generatePlan,
                  ),
          ),
        )
      ],
    );
  }

  Widget _buildPageContent(BuildContext context, int index) {
    switch (index) {
      case 0:
        return _buildDestinationPage();
      case 1:
        return _buildBudgetPage();
      case 2:
        return _buildCompanionsPage();
      case 3:
        return _buildDatePickerPage(context);
      case 4:
        return _buildInterestsPage(context);
      case 5:
        return _buildWeatherPage(context);
      default:
        return Container(
          child: Text("Ops..., Something went wrong!"),
        );
    }
  }

  Widget _buildDestinationPage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: CitySearchField(
        suggestions: DataBase.loadCities() ?? topDestinations,
        onSelection: (selectedCity) {
          _arguments.cityName = selectedCity.cityName;
          _arguments.countryName = selectedCity.countryName;
        },
      ),
    );
  }

  Widget _buildWeatherPage(BuildContext context) {
    return Switch(
      value: _arguments.useWeatherForecast,
      activeColor: Theme.of(context).primaryColor,
      onChanged: (value) => setState(() {
        _arguments.useWeatherForecast = value;
      }),
    );
  }

  Widget _buildCompanionsPage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyDropDown(
          title: "Adults",
          icon: Icons.person_outlined,
          maxValue: 4,
          minValue: 1,
          callback: (value) => _arguments.adultsCount = value,
        ),
        SizedBox(
          width: 60.0,
        ),
        MyDropDown(
          title: "Children",
          icon: Icons.child_care,
          maxValue: 4,
          callback: (value) => _arguments.childrenCount = value,
        ),
      ],
    );
  }

  final ScrollController _scrollController = ScrollController();

  Widget _buildInterestsPage(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 50.0, right: 50.0),
        height: 150.0,
        child: Scrollbar(
          isAlwaysShown: true,
          controller: _scrollController,
          thickness: 4.0,
          radius: Radius.circular(10.0),
          child: ListView(
            controller: _scrollController,
            children: selectableTags.entries
                .map((e) => CheckboxListTile(
                      value: e.value,
                      title: Text(
                        e.key,
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w600),
                      ),
                      activeColor: Theme.of(context).primaryColor,
                      dense: true,
                      onChanged: (value) => setState(() {
                        selectableTags[e.key] = value;
                      }),
                    ))
                .toList(),
          ),
        ));
  }

  Widget _buildDatePickerPage(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200.0,
          child: DefaultButton(
              text: _arguments.startDate,
              icon: Icons.calendar_today,
              press: () async {
                var date = await showDatePicker(
                    context: context,
                    initialDate: parseDateString(_arguments.startDate),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(Duration(days: 365)),
                    helpText: "Start Date");
                setState(() {
                  _arguments.startDate =
                      date?.displayString ?? _arguments.startDate;
                });
              }),
        ),
        SizedBox(height: 20),
        Text(
          "How long?",
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        MyDropDown(
          title: "Days",
          icon: Icons.date_range,
          maxValue: 3,
          minValue: 1,
          callback: (value) => _arguments.durationDays = value,
        ),
      ],
    );
  }

  Widget _buildBudgetPage() {
    return Column(
      children: [
        Slider(
          onChanged: (double value) {
            setState(() {
              _arguments.budget = value;
            });
          },
          value: _arguments.budget,
          min: 0.0,
          max: 1000.0,
          divisions: 20,
          label: "€" + _arguments.budget.toStringAsFixed(0),
        ),
        Text(
          "€" + _arguments.budget.toStringAsFixed(0),
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
        )
      ],
    );
  }

  Widget _buildPageIndicator(Color activeColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
          pagesCount,
          (index) => AnimatedContainer(
                margin: EdgeInsets.only(left: 2.0, right: 2.0),
                width: currentPage == index ? 20.0 : 10.0,
                height: 10.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: currentPage == index ? activeColor : Colors.grey),
                duration: Duration(milliseconds: 250),
              )),
    );
  }

  _generatePlan() async {
    if (!_arguments.hasCityName()) {
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text("Please select a city first!")));
      return;
    }

    setState(() {
      loading = true;
    });

    var selectedTags = selectableTags.entries
        .where((element) => element.value)
        .map((e) => e.key)
        .toList();
    _arguments.interests.addAll(selectedTags);

    SmartPlan smartPlan;
    try {
      smartPlan = await GrpcClient().generatePlan(_arguments);
    } catch (err) {
      // no connection, generate plan locally;
      var activities = DataBase.loadActivities(_arguments.cityName);
      if (activities != null) {
        try {
          smartPlan = await SmartPlanGenerator()
              .generatePlan(arguments: _arguments, activities: activities);
        } catch (err) {
          print(err);
        }
      }
    }
    //response.then((plan) => smartPlan = plan, onError: (error) {});

    if (smartPlan == null) {
      setState(() {
        loading = false;
      });
      Scaffold.of(context).showSnackBar(
          SnackBar(content: Text("Something went wrong, try again later!")));
      return;
    }

    setState(() {
      loading = false;
    });

    smartPlan.arguments = _arguments;
    DataBase.storePlan(smartPlan);

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => PlanScreen(
            plan: smartPlan,
          ),
        ));
  }
}
