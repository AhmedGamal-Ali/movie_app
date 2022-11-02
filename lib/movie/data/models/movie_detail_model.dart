import 'package:movies/movie/data/models/gener_model.dart';
import 'package:movies/movie/domain/entites/movie_detail.dart';

class MovieDetailModel extends MovieDetail {
  MovieDetailModel({
    required super.id,
    super.backdropPath,
    required super.genre,
    required super.title,
    required super.overview,
    required super.voteAaverage,
    required super.runtime,
    required super.releaseDate
  });

  factory MovieDetailModel.fromjson(Map<String, dynamic> json) {
    return MovieDetailModel(
      id: json['id'],
      backdropPath: json['backdrop_path'] ?? "/xGl7uzt0JX8u2WCIKK4e9Sk5Rat.jpg",
      genre: List<GenerModel>.from(
          json['genres'].map((x) => GenerModel.fromjson(x))),
      title: json['title'],
      overview: json['overview'],
      voteAaverage: json['vote_average'].toDouble(),
      runtime: json['runtime'],
      releaseDate: json['release_date']
    );
  }
}
