import 'package:equatable/equatable.dart';

class MovieRecommendation extends Equatable {
  String? backdropPath;
  int id;

  @override
  List<Object?> get props => [
        backdropPath,
        id,
      ];

  MovieRecommendation({
     this.backdropPath,
    required this.id,
  });
}
