class UpdateImageModel {
  Data? data;
  String? message;
  bool? status;

  UpdateImageModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

}

class Data {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? type;
  int? age;
  String? img;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    type = json['type'];
    age = json['age'];
    img = json['img'];
  }

}