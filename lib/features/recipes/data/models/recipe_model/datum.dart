import 'package:equatable/equatable.dart';

class Datum extends Equatable {
  final dynamic id;
  final String? name;
  final dynamic unit;
  final String? unitCount;
  final dynamic mealId;
  final dynamic categoryId;
  final String? mealSystem;
  final dynamic weight;
  final dynamic protein;
  final dynamic fats;
  final dynamic fiber;
  final dynamic calories;
  final dynamic carbs;
  final String? img;

  const Datum({
    this.id,
    this.name,
    this.unit,
    this.unitCount,
    this.mealId,
    this.categoryId,
    this.mealSystem,
    this.weight,
    this.protein,
    this.fats,
    this.fiber,
    this.calories,
    this.carbs,
    this.img,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        name: json['name'] as String?,
        unit: json['unit'] as dynamic,
        unitCount: json['unit_count'] as String?,
        mealId: json['meal_id'] as dynamic,
        categoryId: json['category_id'] as dynamic,
        mealSystem: json['meal_system'] as String?,
        weight: json['weight'] as dynamic,
        protein: json['protein'] as dynamic,
        fats: json['fats'] as dynamic,
        fiber: json['fiber'] as dynamic,
        calories: json['calories'] as dynamic,
        carbs: json['carbs'] as int?,
        img: json['img'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'unit': unit,
        'unit_count': unitCount,
        'meal_id': mealId,
        'category_id': categoryId,
        'meal_system': mealSystem,
        'weight': weight,
        'protein': protein,
        'fats': fats,
        'fiber': fiber,
        'calories': calories,
        'carbs': carbs,
        'img': img,
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      unit,
      unitCount,
      mealId,
      categoryId,
      mealSystem,
      weight,
      protein,
      fats,
      fiber,
      calories,
      carbs,
      img,
    ];
  }
}
