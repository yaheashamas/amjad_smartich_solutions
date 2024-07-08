class CosmeticClinicsEntity {
  bool? success;
  Content? content;
  String? message;
  int? status;

  CosmeticClinicsEntity({
    this.success,
    this.content,
    this.message,
    this.status,
  });

  CosmeticClinicsEntity.fromJson(Map<String, dynamic> json) {
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
  List<Venues>? venues;
  int? currentPage;
  int? perPage;
  int? lastPage;
  int? total;

  Content({
    this.venues,
    this.currentPage,
    this.perPage,
    this.lastPage,
    this.total,
  });

  Content.fromJson(Map<String, dynamic> json) {
    if (json['venues'] != null) {
      venues = <Venues>[];
      json['venues'].forEach((v) {
        venues!.add(Venues.fromJson(v));
      });
    }
    currentPage = json['currentPage'];
    perPage = json['perPage'];
    lastPage = json['lastPage'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (venues != null) {
      data['venues'] = venues!.map((v) => v.toJson()).toList();
    }
    data['currentPage'] = currentPage;
    data['perPage'] = perPage;
    data['lastPage'] = lastPage;
    data['total'] = total;
    return data;
  }
}

class Venues {
  int? id;
  String? name;
  String? description;
  String? bio;
  User? user;
  City? city;
  String? type;
  String? specializationType;
  String? gender;
  int? teamNum;
  String? foundedIn;
  String? location;
  String? address;
  String? latLocation;
  String? longLocation;
  String? phoneNumber;
  String? facebookLink;
  String? whatsappNumber;
  String? instagramLink;
  String? status;
  int? isAvailable;
  int? isOpen;
  int? likes;
  int? reviews;
  int? rate;
  String? profileImage;

  Venues({
    this.id,
    this.name,
    this.description,
    this.bio,
    this.user,
    this.city,
    this.type,
    this.specializationType,
    this.gender,
    this.teamNum,
    this.foundedIn,
    this.location,
    this.address,
    this.latLocation,
    this.longLocation,
    this.phoneNumber,
    this.facebookLink,
    this.whatsappNumber,
    this.instagramLink,
    this.status,
    this.isAvailable,
    this.isOpen,
    this.likes,
    this.reviews,
    this.rate,
    this.profileImage,
  });

  Venues.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    bio = json['bio'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    city = json['city'] != null ? City.fromJson(json['city']) : null;
    type = json['type'];
    specializationType = json['specializationType'];
    gender = json['gender'];
    teamNum = json['teamNum'];
    foundedIn = json['foundedIn'];
    location = json['location'];
    address = json['address'];
    latLocation = json['latLocation'];
    longLocation = json['longLocation'];
    phoneNumber = json['phoneNumber'];
    facebookLink = json['facebookLink'];
    whatsappNumber = json['whatsappNumber'];
    instagramLink = json['instagramLink'];
    status = json['status'];
    isAvailable = json['isAvailable'];
    isOpen = json['isOpen'];
    likes = json['likes'];
    reviews = json['reviews'];
    rate = json['rate'];
    profileImage = json['profileImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['bio'] = bio;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (city != null) {
      data['city'] = city!.toJson();
    }
    data['type'] = type;
    data['specializationType'] = specializationType;
    data['gender'] = gender;
    data['teamNum'] = teamNum;
    data['foundedIn'] = foundedIn;
    data['location'] = location;
    data['address'] = address;
    data['latLocation'] = latLocation;
    data['longLocation'] = longLocation;
    data['phoneNumber'] = phoneNumber;
    data['facebookLink'] = facebookLink;
    data['whatsappNumber'] = whatsappNumber;
    data['instagramLink'] = instagramLink;
    data['status'] = status;
    data['isAvailable'] = isAvailable;
    data['isOpen'] = isOpen;
    data['likes'] = likes;
    data['reviews'] = reviews;
    data['rate'] = rate;
    data['profileImage'] = profileImage;
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? lastName;
  String? email;
  String? phone;
  String? image;
  City? city;

  User({
    this.id,
    this.name,
    this.lastName,
    this.email,
    this.phone,
    this.image,
    this.city,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lastName = json['lastName'];
    email = json['email'];
    phone = json['phone'];
    image = json['image'];
    city = json['city'] != null ? City.fromJson(json['city']) : null;
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
