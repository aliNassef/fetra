import 'package:equatable/equatable.dart';

import 'data.dart';

class RecipesDetailsModel extends Equatable {
  final Data? data;
  final int? status;

  const RecipesDetailsModel({this.data, this.status});

  factory RecipesDetailsModel.fromJson(dynamic json) {
    return RecipesDetailsModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data?.toJson(),
        'status': status,
      };

  @override
  List<Object?> get props => [data, status];
}
