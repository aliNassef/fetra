import 'package:equatable/equatable.dart';

class Data extends Equatable {
  final String? name;
  final String? components;
  final String? recipe;

  const Data({this.name, this.components, this.recipe});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        name: json['name'] as String?,
        components: json['components'] as String?,
        recipe: json['recipe'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'components': components,
        'recipe': recipe,
      };

  @override
  List<Object?> get props => [name, components, recipe];
}
