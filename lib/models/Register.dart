class Register {
  String? username;
  String? fullname;
  String? password;
  String? address;

  Register({this.username, this.fullname, this.password, this.address});

  Register.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    fullname = json['Fullname'];
    password = json['password'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['Fullname'] = this.fullname;
    data['password'] = this.password;
    data['address'] = this.address;
    return data;
  }
}
