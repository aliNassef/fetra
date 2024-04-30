class VideoDetailsModel {
  Data? data;
  List<Videos>? videos;
  int? status;

  VideoDetailsModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    if (json['videos'] != null) {
      videos = <Videos>[];
      json['videos'].forEach((v) {
        videos!.add(Videos.fromJson(v));
      });
    }
    status = json['status'];
  }
}

class Data {
  int? id;
  String? name;
  String? desc;
  String? video;
  String? link;
  String? img;
  Category? category;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    desc = json['desc'];
    video = json['video'];
    link = json['link'];
    img = json['img'];
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
  }
}

class Videos {
  int? id;
  String? name;
  String? desc;
  String? video;
  String? link;
  String? img;
  Category? category;

  Videos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    desc = json['desc'];
    video = json['video'];
    link = json['link'];
    img = json['img'];
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
  }
}

class Category {
  int? id;
  String? name;
  String? img;

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    img = json['img'];
  }
}
