class LoginEntity {
  bool? success;
  Content? content;
  String? message;
  int? status;

  LoginEntity({this.success, this.content, this.message, this.status});

  LoginEntity.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    content =
        json['content'] != null ? Content.fromJson(json['content']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['success'] = success;
    if (content != null) {
      data['content'] = content!.toJson();
    }
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class Content {
  int? id;
  String? name;
  String? lastName;
  String? email;
  String? phone;
  String? image;
  City? city;
  String? token;

  Content(
      {this.id,
      this.name,
      this.lastName,
      this.email,
      this.phone,
      this.image,
      this.city,
      this.token});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lastName = json['lastName'];
    email = json['email'];
    phone = json['phone'];
    image = json['image'];
    city = json['city'] != null ? City.fromJson(json['city']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['lastName'] = lastName;
    data['email'] = email;
    data['phone'] = phone;
    data['image'] = image;
    if (city != null) {
      data['city'] = city!.toJson();
    }
    data['token'] = token;
    return data;
  }
}

class City {
  int? id;
  String? name;

  City({this.id, this.name});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
