class FatCalcModel {
  Data? data;
  String? message;
  bool? status;


  FatCalcModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ?  Data.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

}

class Data {
  String? bodyFat;
  int? fatMass;
  int? leanMass;
  String? fatCategory;

  Data.fromJson(Map<String, dynamic> json) {
    bodyFat = json['BodyFat'];
    fatMass = json['FatMass'];
    leanMass = json['LeanMass'];
    fatCategory = json['fat_category'];
  }

}