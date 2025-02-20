class SignUpRequestModel {
  String? name;
  String? email;
  String? password;
  String? rePassword;
  String? phone;

  SignUpRequestModel(
      {this.name, this.email, this.password, this.rePassword, this.phone});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['rePassword'] = this.rePassword;
    data['phone'] = this.phone;
    return data;
  }
}
