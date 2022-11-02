import 'package:movies/movie/domain/entites/movie.dart';

class MovieModel extends Movie {
  MovieModel(
      {required super.id,
      required super.title,
      required super.backdropPath,
      required super.overview,
      required super.generIds,
      required super.vouteAverage,
      required super.releaseDate});

  factory MovieModel.fromjson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      title: json['title'],
      backdropPath: json['backdrop_path'],
      overview: json['overview'],
      generIds: List<int>.from(json['genre_ids'].map((e) => e)),
      vouteAverage: json['vote_average'].toDouble(),
      releaseDate: json['release_date'],
    );
  }
}
