import 'package:hive/hive.dart';
import 'package:smart_trip_advisor/src/generated/activities.pb.dart';

class ActivityAdapter extends TypeAdapter<Activity> {
  @override
  int get typeId => 0;

  @override
  Activity read(BinaryReader reader) {
    //return Activity.fromJson(reader.read());
    return Activity()
      ..name = reader.readString()
      ..description = reader.readString()
      ..imageUrl = reader.readString()
      ..price = reader.readDouble()
      ..pricePer = reader.readString()
      ..openingTime = reader.readString()
      ..closingTime = reader.readString()
      ..cityName = reader.readString()
      ..countryName = reader.readString()
      ..tags.addAll(reader.readStringList());
  }

  @override
  void write(BinaryWriter writer, Activity obj) {
    //writer.write(obj.writeToJson());
    writer.writeString(obj.name);
    writer.writeString(obj.description);
    writer.writeString(obj.imageUrl);
    writer.writeDouble(obj.price);
    writer.writeString(obj.pricePer);
    writer.writeString(obj.openingTime);
    writer.writeString(obj.closingTime);
    writer.writeString(obj.cityName);
    writer.writeString(obj.countryName);
    writer.writeStringList(obj.tags);
  }
}
