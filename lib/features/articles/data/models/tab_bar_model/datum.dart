import 'package:equatable/equatable.dart';

class Datum extends Equatable {
  final int? id;
  final String? name;
  final String? img;

  const Datum({this.id, this.name, this.img});

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        name: json['name'] as String?,
        img: json['img'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'img': img,
      };

  @override
  List<Object?> get props => [id, name, img];
}
