///
//  Generated code. Do not modify.
//  source: planner.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'planner.pb.dart' as $1;
export 'planner.pb.dart';

class SmartPlannerServiceClient extends $grpc.Client {
  static final _$generateSmartPlan =
      $grpc.ClientMethod<$1.SmartPlannerArguments, $1.SmartPlan>(
          '/planner.SmartPlannerService/GenerateSmartPlan',
          ($1.SmartPlannerArguments value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.SmartPlan.fromBuffer(value));

  SmartPlannerServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.SmartPlan> generateSmartPlan(
      $1.SmartPlannerArguments request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$generateSmartPlan, request, options: options);
  }
}

abstract class SmartPlannerServiceBase extends $grpc.Service {
  $core.String get $name => 'planner.SmartPlannerService';

  SmartPlannerServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.SmartPlannerArguments, $1.SmartPlan>(
        'GenerateSmartPlan',
        generateSmartPlan_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SmartPlannerArguments.fromBuffer(value),
        ($1.SmartPlan value) => value.writeToBuffer()));
  }

  $async.Future<$1.SmartPlan> generateSmartPlan_Pre($grpc.ServiceCall call,
      $async.Future<$1.SmartPlannerArguments> request) async {
    return generateSmartPlan(call, await request);
  }

  $async.Future<$1.SmartPlan> generateSmartPlan(
      $grpc.ServiceCall call, $1.SmartPlannerArguments request);
}
