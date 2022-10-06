class User {
  late int? id;
  late String? fullname;
  // late String? ;

  User.fromJson(Map json) {
    id = json['id'];
    fullname = json['fullname'];
  }
}

class UserResponse {
  late Map? user;
  late String? token;

  UserResponse.fromJson(Map json) {
    token = json['token'];
    user = json['driver'];
  }
}
