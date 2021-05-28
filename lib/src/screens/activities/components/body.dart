import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:smart_trip_advisor/src/generated/activities.pb.dart';
import 'package:smart_trip_advisor/src/services/database.dart';
import 'package:smart_trip_advisor/src/services/grpc_client.dart';
import 'activity_card.dart';
import 'header.dart';

class Body extends StatefulWidget {
  final City city;

  const Body({Key key, @required this.city}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  static const int ACTIVITIES_PER_PAGE = 5;

  List<Activity> _activities = [];

  StreamSubscription<Activity> subscription;
  bool _loading;
  bool _hasMore;
  StreamController<List<Activity>> myStream;

  @override
  void initState() {
    super.initState();
    _loading = true;
    myStream = StreamController<List<Activity>>();

    _init();
  }

  _init() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      // No Connection
      myStream.addError(StateError("No Interent Connection"));
      return;
    }
    var stream = GrpcClient()
        .getActivitiesByCity(widget.city)
        .timeout(Duration(seconds: GrpcClient.TIME_OUT));

    if (connectivityResult == ConnectivityResult.mobile) {
      _hasMore = true;
      _subscribeLazily(stream);
    } else {
      _hasMore = false;
      try {
        var result = await stream.toList();
        myStream.add(result);
      } catch (e) {
        myStream.addError(e);
      }
    }
  }

  void _subscribeLazily(Stream<Activity> stream) {
    List<Activity> result = [];
    subscription = stream.listen((event) {
      result.add(event);
      if (result.length == ACTIVITIES_PER_PAGE) {
        _loading = false;
        subscription.pause();

        myStream.add(result);
        result = [];
      }
    }, onDone: () {
      _hasMore = false;
      if (result.isNotEmpty) {
        myStream.add(result);
        result = [];
      }
    }, onError: (err) {
      myStream.addError(err);
    });
  }

  @override
  void dispose() {
    DataBase.storeActivities(widget.city.cityName, _activities);
    myStream.close();
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(
          cityName: widget.city.cityName,
          countryName: widget.city.countryName,
          imageUrl: widget.city.imageUrl,
        ),
        StreamBuilder<List<Activity>>(
          stream: myStream.stream,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              _hasMore = false;
              var storedActivities =
                  DataBase.loadActivities(widget.city.cityName);
              if ((storedActivities?.isEmpty ?? true) && _activities.isEmpty) {
                return _buildNoItemsWidget();
              }
              if (_activities.isEmpty) {
                _activities.addAll(storedActivities);
              }
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Expanded(
                  child: Center(child: CircularProgressIndicator()));
            } else if (snapshot.hasData) {
              if (snapshot.data.isNotEmpty) {
                _activities.addAll(snapshot.data);
              } else {
                _hasMore = false;
              }
            }
            _loading = false;
            return _buildListView();
          },
        ),
      ],
    );
  }

  Widget _buildListView() {
    return Expanded(
      child: ListView.builder(
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
          itemCount: _hasMore ? _activities.length + 1 : _activities.length,
          itemBuilder: (context, index) {
            if (index >= _activities.length) {
              if (!_loading) {
                _loadMore();
              }
              return Center(child: CircularProgressIndicator());
            }
            return ActivityCard(activity: _activities[index]);
          }),
    );
  }

  Widget _buildNoItemsWidget() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            color: Colors.red,
          ),
          SizedBox(width: 10.0),
          Text(
            "No Connection",
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  _loadMore() {
    print("loading more!");
    _loading = true;
    subscription.resume();
  }
}
