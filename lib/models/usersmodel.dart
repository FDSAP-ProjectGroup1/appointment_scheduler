class usersmodel {
  String? name;
  String? username;
  String? password;
  String? address;

  usersmodel({this.name, this.username, this.password, this.address});

  usersmodel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    username = json['username'];
    password = json['password'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['username'] = this.username;
    data['password'] = this.password;
    data['address'] = this.address;
    return data;
  }
}
