import 'package:equatable/equatable.dart';

import 'data.dart';

class SignInModel extends Equatable {
  final Data? data;
  final String? message;
  final int? status;

  const SignInModel({this.data, this.message, this.status});

  factory SignInModel.fromJson(Map<String, dynamic> json) => SignInModel(
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
        message: json['message'] as String?,
        status: json['status'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'data': data?.toJson(),
        'message': message,
        'status': status,
      };

  @override
  List<Object?> get props => [data, message, status];
}
