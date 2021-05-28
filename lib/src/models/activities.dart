import 'package:smart_trip_advisor/src/generated/activities.pb.dart';

final List<Activity> dresdenActivities = [
  Activity()
    ..name = "Saxon Switzerland"
    ..description = "Nature and Mountaions"
    ..price = 0
    ..pricePer = ""
    ..openingTime = "8:00 am"
    ..closingTime = "10:00 pm"
    ..imageUrl = "assets/images/saxon_switzerland.png"
    ..tags.addAll(["outdoors", "hiking", "public"]),
  Activity()
    ..name = "Zwinger Palace"
    ..description = "Grand building with gardens & galleries"
    ..price = 0
    ..pricePer = ""
    ..openingTime = "12:00 pm"
    ..closingTime = "8:00 pm"
    ..imageUrl = "assets/images/zwinger.png"
    ..tags.addAll(["outdoors", "public"]),
  Activity()
    ..name = "Laser Tag"
    ..description = "Fun with Friends"
    ..price = 15
    ..pricePer = "per hour"
    ..openingTime = "10:00 am"
    ..closingTime = "8:00 pm"
    ..imageUrl = "assets/images/laser_tag.png"
    ..tags.addAll(["indoors", "game"]),
  Activity()
    ..name = "Bowling Arena"
    ..description = "Fun with Friends"
    ..price = 20
    ..pricePer = "per person"
    ..openingTime = "3:00 pm"
    ..closingTime = "11:00 pm"
    ..imageUrl = "assets/images/bowling.png"
    ..tags.addAll(["indoors", "game"]),
  Activity()
    ..name = "Frauenkirche Dresden"
    ..description = "Reconstructed Protestant church"
    ..price = 10
    ..pricePer = "per person"
    ..openingTime = "11:00 am"
    ..closingTime = "8:00 pm"
    ..imageUrl = "assets/images/frauenkirche.png"
    ..tags.addAll(["indoors", "public", "history"]),
  Activity()
    ..name = "Moritzburg Castle"
    ..description = "18th-century palace set on an island"
    ..price = 15
    ..pricePer = "per person"
    ..openingTime = "10:00 am"
    ..closingTime = "6:00 pm"
    ..imageUrl = "assets/images/moritzburg.png"
    ..tags.addAll(["indoors", "public", "history"]),
  Activity()
    ..name = "Dresden Panometer"
    ..description = "360 venue display"
    ..price = 11.50
    ..pricePer = "per person"
    ..openingTime = "10:00 am"
    ..closingTime = "5:00 pm"
    ..imageUrl = "assets/images/panometer.png"
    ..tags.addAll(["indoors", "museum", "art"])
];

final tags = [
  "hiking",
  "public",
  "museum",
  "art",
  "game",
  "history",
  "opera",
  "river",
  "church",
  "castle",
  "palace",
  "gallery",
  "architecture"
];
//final tags = dresdenActivities.map((e) => e.tags).expand((element) => element).toSet();
