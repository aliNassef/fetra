class WalkingInfoModel {
  Data? data;
  String? message;
  bool? status;

  WalkingInfoModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

}

class Data {
  List<Category>? category;
  Fat? fat;


  Data.fromJson(Map<String, dynamic> json) {
    if (json['category'] != null) {
      category = <Category>[];
      json['category'].forEach((v) {
        category!.add(Category.fromJson(v));
      });
    }
    fat = json['fat'] != null ? Fat.fromJson(json['fat']) : null;
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

class Fat {
  String? bodyFat;
  int? fatMass;
  int? leanMass;
  String? fatCategory;
  String? day;

  Fat.fromJson(Map<String, dynamic> json) {
    bodyFat = json['BodyFat'];
    fatMass = json['FatMass'];
    leanMass = json['LeanMass'];
    fatCategory = json['fat_category'];
    day = json['day'];
  }
}