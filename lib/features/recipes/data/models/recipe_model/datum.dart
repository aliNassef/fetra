import 'package:equatable/equatable.dart';

class Datum extends Equatable {
  final int? id;
  final String? name;
  final int? unit;
  final String? unitCount;
  final int? mealId;
  final int? categoryId;
  final String? mealSystem;
  final int? weight;
  final int? protein;
  final int? fats;
  final int? fiber;
  final int? calories;
  final int? carbs;
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
        unit: json['unit'] as int?,
        unitCount: json['unit_count'] as String?,
        mealId: json['meal_id'] as int?,
        categoryId: json['category_id'] as int?,
        mealSystem: json['meal_system'] as String?,
        weight: json['weight'] as int?,
        protein: json['protein'] as int?,
        fats: json['fats'] as int?,
        fiber: json['fiber'] as int?,
        calories: json['calories'] as int?,
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
