///
//  Generated code. Do not modify.
//  source: activities.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'activities.pb.dart' as $0;
export 'activities.pb.dart';

class ActivitiesServiceClient extends $grpc.Client {
  static final _$getActivitiesByLocation =
      $grpc.ClientMethod<$0.Location, $0.Activity>(
          '/activities.ActivitiesService/GetActivitiesByLocation',
          ($0.Location value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Activity.fromBuffer(value));
  static final _$getCities = $grpc.ClientMethod<$0.Empty, $0.City>(
      '/activities.ActivitiesService/GetCities',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.City.fromBuffer(value));

  ActivitiesServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.Activity> getActivitiesByLocation($0.Location request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$getActivitiesByLocation, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.City> getCities($0.Empty request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$getCities, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class ActivitiesServiceBase extends $grpc.Service {
  $core.String get $name => 'activities.ActivitiesService';

  ActivitiesServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Location, $0.Activity>(
        'GetActivitiesByLocation',
        getActivitiesByLocation_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Location.fromBuffer(value),
        ($0.Activity value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.City>(
        'GetCities',
        getCities_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.City value) => value.writeToBuffer()));
  }

  $async.Stream<$0.Activity> getActivitiesByLocation_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Location> request) async* {
    yield* getActivitiesByLocation(call, await request);
  }

  $async.Stream<$0.City> getCities_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getCities(call, await request);
  }

  $async.Stream<$0.Activity> getActivitiesByLocation(
      $grpc.ServiceCall call, $0.Location request);
  $async.Stream<$0.City> getCities($grpc.ServiceCall call, $0.Empty request);
}
