import 'package:equatable/equatable.dart';
import 'package:movies/movie/domain/entites/genre.dart';

class MovieDetail extends Equatable {
  int id;
  String? backdropPath;
  List<Genre> genre;
  String title;
  String overview;
  int runtime;
  double voteAaverage;
  String releaseDate;

  @override
  List<Object?> get props => [
    id,
        backdropPath,
        genre,
        title,
        overview,
        runtime,
        voteAaverage,
    releaseDate
      ];

  MovieDetail(
      {required this.id,
        this.backdropPath,
      required this.genre,
      required this.title,
      required this.overview,
      required this.voteAaverage,
      required this.runtime,required this.releaseDate, });
}
