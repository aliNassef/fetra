import 'package:equatable/equatable.dart';

import 'datum.dart';

class RecipeModel extends Equatable {
  final List<Datum>? data;
  final int? status;

  const RecipeModel({this.data, this.status});

  factory RecipeModel.fromJson(Map<String, dynamic> json) => RecipeModel(
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
            .toList(),
        status: json['status'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
        'status': status,
      };

  @override
  List<Object?> get props => [data, status];
}
