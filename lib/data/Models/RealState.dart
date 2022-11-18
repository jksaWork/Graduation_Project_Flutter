// To parse this JSON data, do
//
//     final realState = realStateFromJson(jsonString);

import 'dart:convert';
import 'dart:ffi';

import 'package:real_state_mangament/data/Models/Area.dart';
import 'package:real_state_mangament/data/Models/Image.dart';

RealState realStateFromJson(String str) => RealState.fromJson(json.decode(str));

String realStateToJson(RealState data) => json.encode(data.toJson());

class RealState {
  RealState({
    required this.id,
    required this.areaId,
    required this.typeId,
    this.clientId,
    this.ownerId,
    required this.title,
    required this.shortDesc,
    required this.longDesc,
    required this.serviceId,
    required this.lat,
    required this.long,
    required this.mainImage,
    required this.status,
    required this.location,
    required this.isAvaliable,
    required this.isFavorate,
    required this.area,
    this.owner,
    this.client,
    required this.type,
    required this.service,
    this.agent,
    required this.images,
  });

  final int id;
  final int areaId;
  final int typeId;
  final dynamic clientId;
  final dynamic ownerId;
  final String title;
  final String shortDesc;
  final String longDesc;
  final int serviceId;
  final String lat;
  final String long;
  final String mainImage;
  final String status;
  final String location;
  final int isAvaliable;
  final Area area;
  final dynamic owner;
  final dynamic client;
  final Area type;
  final Area service;
  final dynamic agent;
  final List<Image> images;
  final isFavorate;

  factory RealState.fromJson(Map<String, dynamic> json) => RealState(
        id: json["id"],
        areaId: json["area_id"],
        typeId: json["type_id"],
        clientId: json["client_id"],
        ownerId: json["owner_id"],
        title: json["title"],
        shortDesc: json["short_desc"],
        longDesc: json["long_desc"],
        serviceId: json["service_id"],
        lat: json["lat"],
        long: json["long"],
        mainImage: json["main_image"],
        status: json["status"],
        location: json["location"],
        isAvaliable: json["is_avaliable"],
        isFavorate: json['is_avaliable'],
        area: Area.fromJson(json["area"]),
        owner: json["owner"],
        client: json["client"],
        type: Area.fromJson(json["type"]),
        service: Area.fromJson(json["service"]),
        agent: json["agent"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "area_id": areaId,
        "type_id": typeId,
        "client_id": clientId,
        "owner_id": ownerId,
        "title": title,
        "short_desc": shortDesc,
        "long_desc": longDesc,
        "service_id": serviceId,
        "lat": lat,
        "long": long,
        "main_image": mainImage,
        "status": status,
        "location": location,
        "is_avaliable": isAvaliable,
        "area": area.toJson(),
        "owner": owner,
        "client": client,
        "type": type.toJson(),
        "service": service.toJson(),
        "agent": agent,
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
      };
}

class OfferResponse {
  List<RealState> offers = [];
  OfferResponse.fromJson(Map json) {
    json['data'].forEach((area) => offers.add(RealState.fromJson(area)));
  }
}
