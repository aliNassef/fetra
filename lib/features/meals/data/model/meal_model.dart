class MealsModel {
  Data? data;
  String? message;
  int? status;

  MealsModel({this.data, this.message, this.status});

  MealsModel.fromJson(dynamic json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }
}

class Data {
  List<Meal>? meal1;
  List<Meal>? meal2;
  List<Meal>? meal3;
  dynamic proteinMeal1;
  dynamic fatMeal1;
  dynamic carbMeal1;
  dynamic proteinMeal2;
  dynamic fatMeal2;
  dynamic carbMeal2;
  dynamic proteinMeal3;
  dynamic fatMeal3;
  dynamic carbMeal3;

  Data.fromJson(Map<String, dynamic> json) {
    if (json['meal1'] != null) {
      meal1 = <Meal>[];
      json['meal1'].forEach((v) {
        meal1!.add(Meal.fromJson(v));
      });
    }
    if (json['meal2'] != null) {
      meal2 = <Meal>[];
      json['meal2'].forEach((v) {
        meal2!.add(Meal.fromJson(v));
      });
    }
    if (json['meal3'] != null) {
      meal2 = <Meal>[];
      json['meal3'].forEach((v) {
        meal2!.add(Meal.fromJson(v));
      });
    }
    proteinMeal1 = json['protein_meal1'];
    fatMeal1 = json['fat_meal1'];
    carbMeal1 = json['carb_meal1'];
    proteinMeal2 = json['protein_meal2'];
    fatMeal2 = json['fat_meal2'];
    carbMeal2 = json['carb_meal2'];
    proteinMeal3 = json['protein_meal3'];
    fatMeal3 = json['fat_meal3'];
    carbMeal3 = json['carb_meal3'];
  }
}

class Meal {
  dynamic id;
  String? name;
  dynamic protein;
  dynamic fats;
  dynamic carb;
  dynamic unit;
  String? weight;
  dynamic quantity;

  Meal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    protein = json['protein'];
    fats = json['fats'];
    carb = json['carb'];
    unit = json['unit'];
    weight = json['weight'];
    quantity = json['quantity'];
  }
}
