// To parse this JSON data, do
//
//     final gMarker = gMarkerFromJson(jsonString);

import 'dart:convert';

import 'package:real_state_mangament/data/Models/RealState.dart';
import 'package:real_state_mangament/data/Source/Static/real_state_static.dart';

GMarker gMarkerFromJson(String str) => GMarker.fromJson(json.decode(str));

String gMarkerToJson(GMarker data) => json.encode(data.toJson());

class GMarker {
  GMarker({
    required this.lat,
    required this.long,
    required this.location,
    required this.mainImage,
    required this.realstate,
    required this.id,
  });

  final String lat;
  final String long;
  final String location;
  final String mainImage;
  final RealState realstate;
  final int id;

  factory GMarker.fromJson(Map<String, dynamic> json) => GMarker(
        lat: json["lat"],
        long: json["long"],
        id: 1,
        realstate: one,
        // Toogle with thid code  realstate: Realstatus.fromJson(json["realstate"]),
        location: json["location"],
        mainImage: json["main_image"],
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "long": long,
        "location": location,
        "main_image": mainImage,
      };
}

class MarkerResponse {
  List<GMarker> markers = [];

  MarkerResponse.fromJson(Map json) {
    json['data'].forEach((mraker) => markers.add(GMarker.fromJson(mraker)));
  }
}
