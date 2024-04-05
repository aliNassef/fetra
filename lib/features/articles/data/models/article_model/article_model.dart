import 'package:equatable/equatable.dart';

import 'datum.dart';

class ArticleModel extends Equatable {
  final List<Datum>? data;
  final String? message;
  final int? status;

  const ArticleModel({this.data, this.message, this.status});

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
            .toList(),
        message: json['message'] as String?,
        status: json['status'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
        'message': message,
        'status': status,
      };

  @override
  List<Object?> get props => [data, message, status];
}
