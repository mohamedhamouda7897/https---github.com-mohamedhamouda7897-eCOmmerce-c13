class AuthModel {
  String? message;
  User? user;
  String? token;

  AuthModel({this.message, this.user, this.token});

  AuthModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }
}

class User {
  String? name;
  String? email;
  String? role;

  User({this.name, this.email, this.role});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    role = json['role'];
  }
}
