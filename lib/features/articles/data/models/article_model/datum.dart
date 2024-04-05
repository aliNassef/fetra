import 'package:equatable/equatable.dart';

class Datum extends Equatable {
  final int? id;
  final String? category;
  final String? img;
  final String? title;
  final String? desc;
  final String? admin;
  final String? createdAt;

  const Datum({
    this.id,
    this.category,
    this.img,
    this.title,
    this.desc,
    this.admin,
    this.createdAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        category: json['category'] as String?,
        img: json['img'] as String?,
        title: json['title'] as String?,
        desc: json['desc'] as String?,
        admin: json['admin'] as String?,
        createdAt: json['created_at'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'category': category,
        'img': img,
        'title': title,
        'desc': desc,
        'admin': admin,
        'created_at': createdAt,
      };

  @override
  List<Object?> get props {
    return [
      id,
      category,
      img,
      title,
      desc,
      admin,
      createdAt,
    ];
  }
}
