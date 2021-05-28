import 'package:hive/hive.dart';
import 'package:smart_trip_advisor/src/generated/activities.pb.dart';

class CityAdapter extends TypeAdapter<City> {
  @override
  int get typeId => 1;

  @override
  City read(BinaryReader reader) {
    return City()
      ..cityName = reader.readString()
      ..countryName = reader.readString()
      ..imageUrl = reader.readString()
      ..description = reader.readString()
      ..activitiesCount = reader.readInt32();
  }

  @override
  void write(BinaryWriter writer, City obj) {
    //writer.write(obj.writeToJson());
    writer.writeString(obj.cityName);
    writer.writeString(obj.countryName);
    writer.writeString(obj.imageUrl);
    writer.writeString(obj.description);
    writer.writeInt32(obj.activitiesCount);
  }
}
