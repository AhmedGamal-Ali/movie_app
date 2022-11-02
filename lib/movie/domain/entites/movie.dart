import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String backdropPath;
  final String overview;
  final List<int> generIds;
  final double vouteAverage;
  final String releaseDate;

 const  Movie({
   required this.id,
   required this.title,
   required this.backdropPath,

   required this.overview,
   required this.generIds,
   required this.vouteAverage,
    required this.releaseDate
  });

  @override
  List<Object> get props => [
        id,
        title,
        backdropPath,
        overview,
        generIds,
        vouteAverage,
      ];
}
