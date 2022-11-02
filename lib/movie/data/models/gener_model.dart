import 'package:movies/movie/domain/entites/genre.dart';

class GenerModel extends Genre {
  GenerModel({
    required super.id,
    required super.name,
  });
  factory GenerModel.fromjson(Map<String, dynamic> json) {
    return GenerModel(
      id: json['id'],
      name: json['name'],
    );
  }
}
