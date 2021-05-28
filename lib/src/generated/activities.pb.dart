///
//  Generated code. Do not modify.
//  source: activities.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Location extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Location', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'activities'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cityName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryName')
    ..hasRequiredFields = false
  ;

  Location._() : super();
  factory Location({
    $core.String cityName,
    $core.String countryName,
  }) {
    final _result = create();
    if (cityName != null) {
      _result.cityName = cityName;
    }
    if (countryName != null) {
      _result.countryName = countryName;
    }
    return _result;
  }
  factory Location.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Location.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Location clone() => Location()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Location copyWith(void Function(Location) updates) => super.copyWith((message) => updates(message as Location)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Location create() => Location._();
  Location createEmptyInstance() => create();
  static $pb.PbList<Location> createRepeated() => $pb.PbList<Location>();
  @$core.pragma('dart2js:noInline')
  static Location getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Location>(create);
  static Location _defaultInstance;

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
}

class Activity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Activity', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'activities'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageUrl')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OD)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pricePer')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'openingTime')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closingTime')
    ..pPS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cityName')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryName')
    ..hasRequiredFields = false
  ;

  Activity._() : super();
  factory Activity({
    $core.String name,
    $core.String description,
    $core.String imageUrl,
    $core.double price,
    $core.String pricePer,
    $core.String openingTime,
    $core.String closingTime,
    $core.Iterable<$core.String> tags,
    $core.String cityName,
    $core.String countryName,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (imageUrl != null) {
      _result.imageUrl = imageUrl;
    }
    if (price != null) {
      _result.price = price;
    }
    if (pricePer != null) {
      _result.pricePer = pricePer;
    }
    if (openingTime != null) {
      _result.openingTime = openingTime;
    }
    if (closingTime != null) {
      _result.closingTime = closingTime;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    if (cityName != null) {
      _result.cityName = cityName;
    }
    if (countryName != null) {
      _result.countryName = countryName;
    }
    return _result;
  }
  factory Activity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Activity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Activity clone() => Activity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Activity copyWith(void Function(Activity) updates) => super.copyWith((message) => updates(message as Activity)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Activity create() => Activity._();
  Activity createEmptyInstance() => create();
  static $pb.PbList<Activity> createRepeated() => $pb.PbList<Activity>();
  @$core.pragma('dart2js:noInline')
  static Activity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Activity>(create);
  static Activity _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get imageUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set imageUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImageUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearImageUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get pricePer => $_getSZ(4);
  @$pb.TagNumber(5)
  set pricePer($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPricePer() => $_has(4);
  @$pb.TagNumber(5)
  void clearPricePer() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get openingTime => $_getSZ(5);
  @$pb.TagNumber(6)
  set openingTime($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOpeningTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearOpeningTime() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get closingTime => $_getSZ(6);
  @$pb.TagNumber(7)
  set closingTime($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasClosingTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearClosingTime() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.String> get tags => $_getList(7);

  @$pb.TagNumber(9)
  $core.String get cityName => $_getSZ(8);
  @$pb.TagNumber(9)
  set cityName($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCityName() => $_has(8);
  @$pb.TagNumber(9)
  void clearCityName() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get countryName => $_getSZ(9);
  @$pb.TagNumber(10)
  set countryName($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCountryName() => $_has(9);
  @$pb.TagNumber(10)
  void clearCountryName() => clearField(10);
}

class City extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'City', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'activities'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cityName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageUrl')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'activitiesCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  City._() : super();
  factory City({
    $core.String cityName,
    $core.String countryName,
    $core.String imageUrl,
    $core.String description,
    $core.int activitiesCount,
  }) {
    final _result = create();
    if (cityName != null) {
      _result.cityName = cityName;
    }
    if (countryName != null) {
      _result.countryName = countryName;
    }
    if (imageUrl != null) {
      _result.imageUrl = imageUrl;
    }
    if (description != null) {
      _result.description = description;
    }
    if (activitiesCount != null) {
      _result.activitiesCount = activitiesCount;
    }
    return _result;
  }
  factory City.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory City.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  City clone() => City()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  City copyWith(void Function(City) updates) => super.copyWith((message) => updates(message as City)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static City create() => City._();
  City createEmptyInstance() => create();
  static $pb.PbList<City> createRepeated() => $pb.PbList<City>();
  @$core.pragma('dart2js:noInline')
  static City getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<City>(create);
  static City _defaultInstance;

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
  $core.String get imageUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set imageUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImageUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearImageUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get activitiesCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set activitiesCount($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasActivitiesCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearActivitiesCount() => clearField(5);
}

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'activities'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty _defaultInstance;
}

