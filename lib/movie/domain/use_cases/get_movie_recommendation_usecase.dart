import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/core/base_usecase/base_usecase.dart';
import 'package:movies/error/failur.dart';
import 'package:movies/movie/domain/entites/recommendation.dart';
import 'package:movies/movie/domain/repository/base_movie_repository.dart';

class GetMovieRecommendationUseCase extends BaseUseCase<List<MovieRecommendation>,RecommendationParmeter> {
  final BaseMovieRepository baseMovieRepository;

  GetMovieRecommendationUseCase( this.baseMovieRepository);

  @override
  Future<Either<Failur, List<MovieRecommendation>>> call(RecommendationParmeter parameter) async {
    return await baseMovieRepository.getRecommendation(parameter);
  }
}


class RecommendationParmeter extends Equatable {
  int id;

  @override
  List<Object> get props => [id];

  RecommendationParmeter(this.id);
}