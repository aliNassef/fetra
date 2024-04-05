import 'package:equatable/equatable.dart';

import 'datum.dart';

class TabBarModel extends Equatable {
  final List<Datum>? data;
  final String? message;
  final int? status;

  const TabBarModel({this.data, this.message, this.status});

  factory TabBarModel.fromJson(Map<String, dynamic> json) => TabBarModel(
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
