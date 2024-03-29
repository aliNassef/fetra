import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? type;
  final String? age;
  final String? img;

  const User({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.type,
    this.age,
    this.img,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as int?,
        name: json['name'] as String?,
        email: json['email'] as String?,
        phone: json['phone'] as String?,
        type: json['type'] as String?,
        age: json['age'] as String?,
        img: json['img'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'phone': phone,
        'type': type,
        'age': age,
        'img': img,
      };

  @override
  List<Object?> get props => [id, name, email, phone, type, age, img];
}
