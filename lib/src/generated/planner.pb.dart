///
//  Generated code. Do not modify.
//  source: planner.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'activities.pb.dart' as $0;

class SmartPlan extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartPlan', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'planner'), createEmptyInstance: create)
    ..pc<$0.Activity>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'activities', $pb.PbFieldType.PM, subBuilder: $0.Activity.create)
    ..aOM<SmartPlannerArguments>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'arguments', subBuilder: SmartPlannerArguments.create)
    ..hasRequiredFields = false
  ;

  SmartPlan._() : super();
  factory SmartPlan({
    $core.Iterable<$0.Activity> activities,
    SmartPlannerArguments arguments,
  }) {
    final _result = create();
    if (activities != null) {
      _result.activities.addAll(activities);
    }
    if (arguments != null) {
      _result.arguments = arguments;
    }
    return _result;
  }
  factory SmartPlan.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmartPlan.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SmartPlan clone() => SmartPlan()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SmartPlan copyWith(void Function(SmartPlan) updates) => super.copyWith((message) => updates(message as SmartPlan)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmartPlan create() => SmartPlan._();
  SmartPlan createEmptyInstance() => create();
  static $pb.PbList<SmartPlan> createRepeated() => $pb.PbList<SmartPlan>();
  @$core.pragma('dart2js:noInline')
  static SmartPlan getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmartPlan>(create);
  static SmartPlan _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.Activity> get activities => $_getList(0);

  @$pb.TagNumber(2)
  SmartPlannerArguments get arguments => $_getN(1);
  @$pb.TagNumber(2)
  set arguments(SmartPlannerArguments v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasArguments() => $_has(1);
  @$pb.TagNumber(2)
  void clearArguments() => clearField(2);
  @$pb.TagNumber(2)
  SmartPlannerArguments ensureArguments() => $_ensure(1);
}

class SmartPlannerArguments extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmartPlannerArguments', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'planner'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cityName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryName')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'budget', $pb.PbFieldType.OD)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'adultsCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'childrenCount', $pb.PbFieldType.OU3)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDate')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'durationDays', $pb.PbFieldType.OU3)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'useWeatherForecast')
    ..pPS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interests')
    ..hasRequiredFields = false
  ;

  SmartPlannerArguments._() : super();
  factory SmartPlannerArguments({
    $core.String cityName,
    $core.String countryName,
    $core.double budget,
    $core.int adultsCount,
    $core.int childrenCount,
    $core.String startDate,
    $core.int durationDays,
    $core.bool useWeatherForecast,
    $core.Iterable<$core.String> interests,
  }) {
    final _result = create();
    if (cityName != null) {
      _result.cityName = cityName;
    }
    if (countryName != null) {
      _result.countryName = countryName;
    }
    if (budget != null) {
      _result.budget = budget;
    }
    if (adultsCount != null) {
      _result.adultsCount = adultsCount;
    }
    if (childrenCount != null) {
      _result.childrenCount = childrenCount;
    }
    if (startDate != null) {
      _result.startDate = startDate;
    }
    if (durationDays != null) {
      _result.durationDays = durationDays;
    }
    if (useWeatherForecast != null) {
      _result.useWeatherForecast = useWeatherForecast;
    }
    if (interests != null) {
      _result.interests.addAll(interests);
    }
    return _result;
  }
  factory SmartPlannerArguments.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmartPlannerArguments.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SmartPlannerArguments clone() => SmartPlannerArguments()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SmartPlannerArguments copyWith(void Function(SmartPlannerArguments) updates) => super.copyWith((message) => updates(message as SmartPlannerArguments)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmartPlannerArguments create() => SmartPlannerArguments._();
  SmartPlannerArguments createEmptyInstance() => create();
  static $pb.PbList<SmartPlannerArguments> createRepeated() => $pb.PbList<SmartPlannerArguments>();
  @$core.pragma('dart2js:noInline')
  static SmartPlannerArguments getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmartPlannerArguments>(create);
  static SmartPlannerArguments _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cityName => $_getSZ(0);
  @$pb.TagNumber(1)
  set cityName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCityName() => $_has(0);
  @$pb.TagNumber(1)
  void clearCityName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get countryName => $_getSZ(1);
  @$pb.TagNumber(2)
  set countryName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCountryName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCountryName() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get budget => $_getN(2);
  @$pb.TagNumber(3)
  set budget($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBudget() => $_has(2);
  @$pb.TagNumber(3)
  void clearBudget() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get adultsCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set adultsCount($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAdultsCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAdultsCount() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get childrenCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set childrenCount($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasChildrenCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearChildrenCount() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get startDate => $_getSZ(5);
  @$pb.TagNumber(6)
  set startDate($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStartDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearStartDate() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get durationDays => $_getIZ(6);
  @$pb.TagNumber(7)
  set durationDays($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDurationDays() => $_has(6);
  @$pb.TagNumber(7)
  void clearDurationDays() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get useWeatherForecast => $_getBF(7);
  @$pb.TagNumber(8)
  set useWeatherForecast($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUseWeatherForecast() => $_has(7);
  @$pb.TagNumber(8)
  void clearUseWeatherForecast() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.String> get interests => $_getList(8);
}

