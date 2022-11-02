import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/core/base_usecase/base_usecase.dart';
import 'package:movies/error/failur.dart';
import 'package:movies/movie/domain/entites/movie_detail.dart';
import 'package:movies/movie/domain/repository/base_movie_repository.dart';

class GetMovieDetailUseCase extends BaseUseCase<MovieDetail,MovieDetailParameter> {
  final BaseMovieRepository baseMovieRepository;

  GetMovieDetailUseCase(this.baseMovieRepository);

  @override
  Future<Either<Failur, MovieDetail>> call(MovieDetailParameter parameter) async {
    return await baseMovieRepository.getMovieDetail(parameter);
  }

}

class MovieDetailParameter extends Equatable {
  int id;

  MovieDetailParameter({required this.id, });

  @override
  List<Object> get props => [id];

}