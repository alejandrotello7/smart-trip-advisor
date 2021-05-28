import 'package:hive/hive.dart';
import 'package:smart_trip_advisor/src/generated/planner.pb.dart';

class SmartPlanAdapter extends TypeAdapter<SmartPlan> {
  @override
  int get typeId => 2;

  @override
  SmartPlan read(BinaryReader reader) {
    return SmartPlan.fromJson(reader.read());
  }

  @override
  void write(BinaryWriter writer, SmartPlan obj) {
    writer.write(obj.writeToJson());
  }
}
