import 'package:dartz/dartz.dart';
import 'package:movies/core/base_usecase/base_usecase.dart';
import 'package:movies/error/failur.dart';
import 'package:movies/movie/domain/entites/movie.dart';
import 'package:movies/movie/domain/repository/base_movie_repository.dart';

class GetPopularMovie extends BaseUseCase<List<Movie>,NoPrameter> {
  final BaseMovieRepository baseMovieRepository;

  GetPopularMovie(this.baseMovieRepository);

  @override
  Future<Either<Failur, List<Movie>>> call(NoPrameter noPrameter) async {
    return await baseMovieRepository.getPopularMovie();
  }


}