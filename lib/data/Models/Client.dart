//     final client = clientFromJson(jsonString);

import 'dart:convert';

Client clientFromJson(String str) => Client.fromJson(json.decode(str));

String clientToJson(Client data) => json.encode(data.toJson());

class Client {
  int? id;
  String? name;
  String? phone;
  String? email;
  String? password;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  Client({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.password,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory Client.fromJson(Map<String, dynamic> json) => Client(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        password: json["password"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "email": email,
        "password": password,
        "status": status,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}

class ClientResponse {
  late String token;
  late Client client;
  ClientResponse.fromJson(Map json) {
    // print(json['data']['client']);
    client = Client.fromJson(json['data']['client']);
    token = json['data']['token'];
  }
}
