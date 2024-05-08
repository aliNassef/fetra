class WalkingModel {
  Data? data;
  String? message;
  bool? status;

  WalkingModel({this.data, this.message, this.status});

  WalkingModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }
}

class Data {
  int? id;
  String? desc;


  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    desc = json['desc'];
  }

}