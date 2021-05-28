import 'package:smart_trip_advisor/src/generated/activities.pbgrpc.dart';
import 'package:hive/hive.dart';

class ActivitiesFiller {
  static Future<void> fillActivities() async {
    final activityBox = await Hive.openBox("activityBox");
    final cityBox = await Hive.openBox("cityBox");
    activityBox.put("Dresden", [
      Activity()
        ..name = "Saxon Switzerland"
        ..description = "Nature and Mountaions"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "8:00 am"
        ..closingTime = "10:00 pm"
        ..imageUrl = "assets/images/saxon_switzerland.png"
        ..tags.add("outdoors")
        ..tags.add("hiking")
        ..tags.add("public")
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Zwinger Palace"
        ..description = "Grand building with gardens & galleries"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 pm"
        ..closingTime = "8:00 pm"
        ..imageUrl = "assets/images/zwinger.png"
        ..tags.addAll(["outdoors", "public"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Laser Tag"
        ..description = "Fun with Friends"
        ..price = 15
        ..pricePer = "per person"
        ..openingTime = "10:00 am"
        ..closingTime = "8:00 pm"
        ..imageUrl = "assets/images/laser_tag.png"
        ..tags.addAll(["indoors", "game"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Bowling Arena"
        ..description = "Fun with Friends"
        ..price = 20
        ..pricePer = "per person"
        ..openingTime = "3:00 pm"
        ..closingTime = "11:00 pm"
        ..imageUrl = "assets/images/bowling.png"
        ..tags.addAll(["indoors", "game"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Frauenkirche Dresden"
        ..description = "Reconstructed Protestant church"
        ..price = 10
        ..pricePer = "per person"
        ..openingTime = "11:00 am"
        ..closingTime = "8:00 pm"
        ..imageUrl = "assets/images/frauenkirche.png"
        ..tags.addAll(["indoors", "public", "history"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Moritzburg Castle"
        ..description = "18th-century palace set on an island"
        ..price = 15
        ..pricePer = "per person"
        ..openingTime = "10:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/moritzburg.png"
        ..tags.addAll(["indoors", "public", "history"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Dresden Panometer"
        ..description = "360 venue display"
        ..price = 11.50
        ..pricePer = "per person"
        ..openingTime = "10:00 am"
        ..closingTime = "5:00 pm"
        ..imageUrl = "assets/images/panometer.png"
        ..tags.addAll(["indoors", "museum", "art"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Semperoper Dresden"
        ..description = "Opera House tour"
        ..price = 10
        ..pricePer = "per person"
        ..openingTime = "9:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/semper.png"
        ..tags.addAll(["indoors", "opera", "art"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Dresden Castle"
        ..description = "Old royal palace and museum"
        ..price = 15
        ..pricePer = "per person"
        ..openingTime = "10:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/dresden_castle.png"
        ..tags.addAll(["indoors", "museum", "art"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Green vault"
        ..description = "Museum with baroque jewelry and artworks"
        ..price = 12
        ..pricePer = "per person"
        ..openingTime = "10:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/green_vault.png"
        ..tags.addAll(["indoors", "museum", "art"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Old masters picture gallery"
        ..description = "World renowned collection of painting"
        ..price = 14
        ..pricePer = "per person"
        ..openingTime = "8:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/old_masters.png"
        ..tags.addAll(["indoors", "museum", "art"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Bruhl's Terrace"
        ..description = "Renaissance terrace with river views"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/bruhl_terrace.png"
        ..tags.addAll(["outdoors", "walk", "river"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Katholische Hofkirche"
        ..description = "Roman Catholic cathedral of Dresden"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "9:00 am"
        ..closingTime = "5:00 pm"
        ..imageUrl = "assets/images/katholische.png"
        ..tags.addAll(["indoors", "catholic", "church"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Pillnitz Castle"
        ..description = "Restored renaissance palace and gardens"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "6:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/pilnitz.png"
        ..tags.addAll(["outdoors", "castle", "palace"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Furstenzug"
        ..description = "Large porcelain mosaic of Saxon rulers"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/furstenzug.png"
        ..tags.addAll(["outdoors", "porcelain", "mosaic", "walk"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Albertinum"
        ..description = "Art gallery with sculptures and paintings"
        ..price = 0
        ..pricePer = "per person"
        ..openingTime = "10:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/albertinum.png"
        ..tags.addAll(["indoors", "art", "gallery"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Grand Garden of Dresden"
        ..description = "Vast garden with sculptures and a palace"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 pm"
        ..imageUrl = "assets/images/grand_garden.png"
        ..tags.addAll(["outdoors", "family", "walk"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Dresden Elbe Valley"
        ..description = "Scenic valley with palaces and parks"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 pm"
        ..imageUrl = "assets/images/elbe_valley.png"
        ..tags.addAll(["outdoors", "river", "walk"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Loschwitz Bridge"
        ..description = "Iconic bridge built in the late 1800s"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 pm"
        ..imageUrl = "assets/images/loschwitz.png"
        ..tags.addAll(["outdoors", "bridge", "walk"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Museum of Military History"
        ..description = "Displays on German Military history"
        ..price = 10
        ..pricePer = "per person"
        ..openingTime = "10:00 am"
        ..closingTime = "4:00 pm"
        ..imageUrl = "assets/images/military.png"
        ..tags.addAll(["indoors", "museum", "military"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Neumarkt"
        ..description = "Iconic square with monuments and museums"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/neumarkt.png"
        ..tags.addAll(["outdoors", "walk", "art"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Dresden Transport Museum"
        ..description = "120-year-old transport collection"
        ..price = 4.50
        ..pricePer = "per person"
        ..openingTime = "10:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/transport_museum.png"
        ..tags.addAll(["indoors", "museum", "transport"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "German hygiene Museum"
        ..description = "7 themed rooms on the humang being"
        ..price = 0
        ..pricePer = "per person"
        ..openingTime = "10:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/hygiene.png"
        ..tags.addAll(["indoors", "museum", "hygiene"])
        ..cityName = "Dresden"
        ..countryName = "Germany",
      Activity()
        ..name = "Transparent Factory"
        ..description = "Interactive Volkswagen museum with tours"
        ..price = 10
        ..pricePer = ""
        ..openingTime = "6:00 am"
        ..closingTime = "10:00 pm"
        ..imageUrl = "assets/images/transparent.png"
        ..tags.addAll(["indoors", "museum", "cars"])
        ..cityName = "Dresden"
        ..countryName = "Germany"
    ]);
    activityBox.put("Paris", [
      Activity()
        ..name = "Eiffel tower"
        ..description = "Wrought-iron lattice tower on the Champ de Mars"
        ..price = 10.40
        ..pricePer = "per person"
        ..openingTime = "9:00 pm"
        ..closingTime = "11:00 pm"
        ..imageUrl = "assets/images/eiffel.png"
        ..tags.addAll(["outdoors", "public", "must-do"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Louvre Museum"
        ..description = "World's largest art museum"
        ..price = 15
        ..pricePer = "per person"
        ..openingTime = "9:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/louvre.png"
        ..tags.addAll(["indoors", "museum", "art", "must-do"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Notre-dame de Paris"
        ..description = "Medieval catholic cathedral"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "8:00 am"
        ..closingTime = "7:45 pm"
        ..imageUrl = "assets/images/notredame.png"
        ..tags.addAll(["indoors", "cathedral", "must-do"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Arc de Triomphe"
        ..description = "Famous Paris monument"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/triomphe.png"
        ..tags.addAll(["outdoors", "architecture", "history"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Basilica of the Sacred Heart of Paris"
        ..description = "Roman catholic church and minor basilica"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "6:00 am"
        ..closingTime = "10:30 am"
        ..imageUrl = "assets/images/basilica.png"
        ..tags.addAll(["indoors", "church", "catholic"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Musée d'Orsay"
        ..description = "Famous art museum"
        ..price = 14
        ..pricePer = "per person"
        ..openingTime = "9:30 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/orsay.png"
        ..tags.addAll(["indoors", "museum", "art"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Palace of Versailles"
        ..description = "Fomer principal royal residence of France"
        ..price = 10
        ..pricePer = "per person"
        ..openingTime = "8:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/versailles.png"
        ..tags.addAll(["outdoors", "art", "garden"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Paris Saint-Germain Tour"
        ..description = "Football stadium tour"
        ..price = 14.90
        ..pricePer = "per person"
        ..openingTime = "9:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/psg.png"
        ..tags.addAll(["indoors", "sports", "football"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Tuileries Garden"
        ..description = "Public garden with statues"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/tuileries.png"
        ..tags.addAll(["outdoors", "park", "public"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Champs-Elysees"
        ..description = "Iconic site of landmarks, dining and shops"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/champs.png"
        ..tags.addAll(["outdoors", "shop", "dining"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Montmartre"
        ..description = "Charming hill with a landmark basilica"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/montmartre.png"
        ..tags.addAll(["outdoors", "walk", "park"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "The Centre Pompidou"
        ..description = "Avant-garden multicultural complex"
        ..price = 11
        ..pricePer = "per person"
        ..openingTime = "11:00 am"
        ..closingTime = "9:00 pm"
        ..imageUrl = "assets/images/pompidou.png"
        ..tags.addAll(["indoors", "museum", "art"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Luxembourg Gardens"
        ..description = "Park with manicured lawns and statues"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/luxembourg.png"
        ..tags.addAll(["outdoors", "park", "art"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Moulin Rouge tour"
        ..description = "Legendary Belle Epoque cabaret"
        ..price = 11
        ..pricePer = "per person"
        ..openingTime = "11:00 am"
        ..closingTime = "9:00 pm"
        ..imageUrl = "assets/images/moulin.png"
        ..tags.addAll(["indoors", "tour", "cabaret"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Place de la Concorde"
        ..description = "18th century plaza with Egyptian obelisk"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/concorde.png"
        ..tags.addAll(["outdoors", "walk", "plaza"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Sainte-Chapelle"
        ..description = "Gothic chapel with stained-glass windows"
        ..price = 13
        ..pricePer = "per person"
        ..openingTime = "9:00 am"
        ..closingTime = "7:00 pm"
        ..imageUrl = "assets/images/sainte.png"
        ..tags.addAll(["indoors", "church", "architecture"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Ile de la Cite"
        ..description = "Urban island with historic landmarks"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 pm"
        ..imageUrl = "assets/images/cite.png"
        ..tags.addAll(["outdoors", "walk", "architecture"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Les invalides"
        ..description = "Military museum and interred war heroes"
        ..price = 16
        ..pricePer = "per person"
        ..openingTime = "10:00 am"
        ..closingTime = "5:00 pm"
        ..imageUrl = "assets/images/invalides.png"
        ..tags.addAll(["indoors", "military", "museum"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Champ de Mars"
        ..description = "Landscaoed park with extensive lawns"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/mars.png"
        ..tags.addAll(["outdoors", "park", "walk"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Catacombs of Paris"
        ..description = "Tunnel complex for millions of skeletons"
        ..price = 10
        ..pricePer = "per person"
        ..openingTime = "8:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/catacombs.png"
        ..tags.addAll(["indoors", "museum", "history3"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Montparnasse Tower"
        ..description = "59-story skyscraper with viewing deck"
        ..price = 15
        ..pricePer = "per person"
        ..openingTime = "10:00 am"
        ..closingTime = "10:00 pm"
        ..imageUrl = "assets/images/montparnasse.png"
        ..tags.addAll(["indoors", "view", "tour"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Rmn-Grand Palais"
        ..description = "1900 exhibition hall with glass roof"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "7:00 am"
        ..closingTime = "5:00 pm"
        ..imageUrl = "assets/images/rmn.png"
        ..tags.addAll(["indoors", "view", "tour"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Palais Garnier"
        ..description = "Italian-style opera with Library Museum"
        ..price = 10
        ..pricePer = "per person"
        ..openingTime = "10:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/garnier.png"
        ..tags.addAll(["indoors", "opera", "tour"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Pere Lachaise Cemetery"
        ..description = "Well-known graves in leafy burial site"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/pere.png"
        ..tags.addAll(["outdoors", "walk", "tour"])
        ..cityName = "Paris"
        ..countryName = "France",
      Activity()
        ..name = "Pont Neuf"
        ..description = "Stone bridge with a statue of Henri IV"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/neuf.png"
        ..tags.addAll(["outdoors", "walk", "bridge"])
        ..cityName = "Paris"
        ..countryName = "France",
    ]);
    activityBox.put("Venice", [
      Activity()
        ..name = "St Mark's Square"
        ..description = "Urban square in Venice"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "10:00 am"
        ..closingTime = "10:00 pm"
        ..imageUrl = "assets/images/mark.png"
        ..tags.addAll(["outdoors", "family", "public"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "St Mark's Basilica"
        ..description =
            "Cathedral church of the Roman Catholic Archdiocese of Venice"
        ..price = 15
        ..pricePer = "per person"
        ..openingTime = "9:30 am"
        ..closingTime = "5:00 pm"
        ..imageUrl = "assets/images/mark_basilica.png"
        ..tags.addAll(["outdoors", "church", "catholic"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Doge's Palace"
        ..description = "Gothic style palace"
        ..price = 10
        ..pricePer = "per person"
        ..openingTime = "8:30 am"
        ..closingTime = "7:00 pm"
        ..imageUrl = "assets/images/doge.png"
        ..tags.addAll(["outdoors", "gothic", "palace"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Rialto Bridge"
        ..description = "Oldest bridge crossing Venice"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/rialto.png"
        ..tags.addAll(["outdoors", "bridge", "history"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "St Mark's Campanile"
        ..description = "Bell tower of St Mark's Basilica"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "9:45 am"
        ..closingTime = "7:00 pm"
        ..imageUrl = "assets/images/mark_campanile.png"
        ..tags.addAll(["indoors", "history", "church"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Peggy Guggenheim Collection"
        ..description = "Modern art museum on the Grand Canal"
        ..price = 15
        ..pricePer = "per person"
        ..openingTime = "10:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/peggy.png"
        ..tags.addAll(["indoors", "art", "museum"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Venice Giardini"
        ..description = "Historic parkland"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/giardini.png"
        ..tags.addAll(["outdoors", "park", "history"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Grand Canal"
        ..description = "Canal, palace, basilica and church"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/canal.png"
        ..tags.addAll(["outdoors", "canal", "walk"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Burano"
        ..description = "Lace-making and colorful fishermen's homes"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/burano.png"
        ..tags.addAll(["outdoors", "walk", "architecture"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Bridge of Sighs"
        ..description = "Iconic white-stone enclosed brige"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/bridge_sighs.png"
        ..tags.addAll(["outdoors", "walk", "architecture"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Murano"
        ..description = "Museum del Vetro and glass souvenirs"
        ..price = 10
        ..pricePer = "per person"
        ..openingTime = "10:00 am"
        ..closingTime = "7:00 pm"
        ..imageUrl = "assets/images/murano.png"
        ..tags.addAll(["indoors", "museum", "souvenirs"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Torcello"
        ..description = "Santa Maria Assunta and canalside eateries"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/torcello.png"
        ..tags.addAll(["outdoors", "walk", "food"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Basilica di Santa Maria della Salute"
        ..description = "Iconic 1600s church with a vast cupola"
        ..price = 11
        ..pricePer = "per person"
        ..openingTime = "10:00 am"
        ..closingTime = "7:00 pm"
        ..imageUrl = "assets/images/sallute.png"
        ..tags.addAll(["indoors", "church", "architecture"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Teatro La Fenice tour"
        ..description = "Grand opera house rebuilt after a fire"
        ..price = 8
        ..pricePer = "per person"
        ..openingTime = "10:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/fenice.png"
        ..tags.addAll(["indoors", "opera", "tour"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Galleria Giorgio Franchetti all Ca' d'Oro"
        ..description = "Art museum in a 15th-century palace"
        ..price = 12
        ..pricePer = "per person"
        ..openingTime = "8:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/giorgi.png"
        ..tags.addAll(["indoors", "museum", "art"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Ca'Rezzonico"
        ..description = "Grand art and furniture-filled palazzo"
        ..price = 5
        ..pricePer = "per person"
        ..openingTime = "9:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/rezzonico.png"
        ..tags.addAll(["indoors", "museum", "art"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Museo Correr"
        ..description = "Museum of Venetian art and antiquities"
        ..price = 10
        ..pricePer = "per person"
        ..openingTime = "9:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/correr.png"
        ..tags.addAll(["indoors", "museum", "art"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Giudecca"
        ..description = "Waterside dining and hip Molino stucky bar"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/giudecca.png"
        ..tags.addAll(["outdoors", "food", "hip"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "St Mark's Clocktower"
        ..description = "Renaissance tower with mechanical clock"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/clocktower.png"
        ..tags.addAll(["outdoors", "walk", "history"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Church of San Giorgio Maggiore"
        ..description = "Palladian church overlooking the lagoon"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/giorgio.png"
        ..tags.addAll(["indoors", "church", "architecture"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Venetian Arsenal"
        ..description = "Shipyard founded in early 12th century"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "12:00 am"
        ..closingTime = "12:00 am"
        ..imageUrl = "assets/images/venetian.png"
        ..tags.addAll(["outdoors", "walk", "ship"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Grassi Palace"
        ..description = "Contemporary art in 17th-century palace"
        ..price = 10
        ..pricePer = "per person"
        ..openingTime = "10:00 am"
        ..closingTime = "5:00 pm"
        ..imageUrl = "assets/images/grassi.png"
        ..tags.addAll(["indoors", "museum", "art"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Basilica Santa Maria Gloriosa dei Frari"
        ..description = "Vast 1300s church and works by Titian"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "10:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/gloriosa.png"
        ..tags.addAll(["indoors", "church", "architecture"])
        ..cityName = "Venice"
        ..countryName = "Italy",
      Activity()
        ..name = "Chiesa di San Zaccaria"
        ..description = "Gothic church with altarpiece by Bellini"
        ..price = 0
        ..pricePer = ""
        ..openingTime = "10:00 am"
        ..closingTime = "6:00 pm"
        ..imageUrl = "assets/images/gothic.png"
        ..tags.addAll(["indoors", "church", "gothic"])
        ..cityName = "Venice"
        ..countryName = "Italy",
    ]);
    cityBox.put(
        "Dresden",
        City()
          ..cityName = "Dresden"
          ..countryName = "Germany"
          ..imageUrl = "assets/images/dresden.png"
          ..description =
              "Capital city of the German state of Saxony and its second most populous city."
          ..activitiesCount = 24);
    cityBox.put(
        "Venice",
        City()
          ..cityName = "Venice"
          ..countryName = "Italy"
          ..imageUrl = "assets/images/venice.png"
          ..description =
              "City in northeastern Italy and the capital of the Veneto region."
          ..activitiesCount = 24);
    cityBox.put(
        "Paris",
        City()
          ..cityName = "Paris"
          ..countryName = "France"
          ..imageUrl = "assets/images/paris.png"
          ..description =
              "Capital and most populous city of France. One of Europe's major centres of finance, diplomacy, commerce, fashion and arts."
          ..activitiesCount = 25);
  }

  static Future<List<Activity>> getActivities(String cityName) async {
    final activityBox = await Hive.openBox("activityBox");
    List<Activity> result = activityBox.get(cityName).cast<Activity>();
    activityBox.close();

    return result;
  }
}
