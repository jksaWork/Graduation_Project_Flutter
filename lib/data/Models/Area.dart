import 'dart:convert';

class Area {
  int id;
  String name;
  String description;

  Area({
    required this.id,
    required this.name,
    required this.description,
  });

  factory Area.fromJson(Map<String, dynamic> json) => Area(
        id: json["id"],
        name: json["name"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
      };
}

Area areaFromJson(String str) => Area.fromJson(json.decode(str));

String areaToJson(Area data) => json.encode(data.toJson());

//  Area Response
class AreasResponse {
  List<Area> areas = [];
  late String token;

  AreasResponse.fromJson(Map json) {
    json['data'].forEach((area) => areas.add(Area.fromJson(area)));
  }
}
