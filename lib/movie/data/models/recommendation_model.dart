import 'package:movies/movie/domain/entites/recommendation.dart';

class MovieRecommendationModel extends MovieRecommendation {
  MovieRecommendationModel({
     super.backdropPath,
    required super.id,
  });

  factory MovieRecommendationModel.fromjson(Map<String, dynamic> json) {
    return MovieRecommendationModel(
      backdropPath: json['backdrop_path']??"/y5Z0WesTjvn59jP6yo459eUsbli.jpg",
      id: json['id'],
    );
  }
}
