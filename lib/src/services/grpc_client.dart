import 'package:grpc/grpc.dart';
import 'package:smart_trip_advisor/src/generated/activities.pbgrpc.dart';
import 'package:smart_trip_advisor/src/generated/planner.pb.dart';
import 'package:smart_trip_advisor/src/generated/planner.pbgrpc.dart';

import 'package:smart_trip_advisor/src/services/extensions/extentions.dart';

class GrpcClient {
  static const int TIME_OUT = 3;

  ClientChannel _channel;

  static GrpcClient _singleton;

  factory GrpcClient() {
    if (_singleton == null) {
      _singleton = GrpcClient._internal();
    }
    return _singleton;
  }

  GrpcClient._internal() {
    _createChannel();
  }

  _createChannel() {
    if (_channel == null) {
      _channel = ClientChannel(
        '192.168.188.46',
        port: 8080,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(minutes: 1),
        ),
      );
    }

    return _channel;
  }

  ResponseStream<Activity> getActivitiesByCity(City city) {
    return getActivitiesByLocation(city.toLocation());
  }

  ResponseStream<Activity> getActivitiesByLocation(Location location) {
    var client = ActivitiesServiceClient(_channel);

    // No timeout to enable lazy loading
    return client.getActivitiesByLocation(location);
  }

  ResponseStream<City> getCities() {
    var client = ActivitiesServiceClient(_channel,
        options: CallOptions(timeout: Duration(seconds: TIME_OUT)));

    return client.getCities(Empty());
  }

  ResponseFuture<SmartPlan> generatePlan(SmartPlannerArguments arguments) {
    var client = SmartPlannerServiceClient(_channel,
        options: CallOptions(timeout: Duration(seconds: TIME_OUT)));

    return client.generateSmartPlan(arguments);
  }

  shutdown() async {
    await _channel.shutdown();
    _channel = null;
  }
}
