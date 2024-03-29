import 'package:equatable/equatable.dart';

import 'user.dart';

class Data extends Equatable {
  final User? user;
  final String? token;

  const Data({this.user, this.token});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: json['user'] == null
            ? null
            : User.fromJson(json['user'] as Map<String, dynamic>),
        token: json['token'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'user': user?.toJson(),
        'token': token,
      };

  @override
  List<Object?> get props => [user, token];
}
