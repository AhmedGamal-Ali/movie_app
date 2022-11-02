import 'package:movies/error/exeptions.dart';
import 'package:movies/error/failur.dart';
import 'package:movies/movie/data/data_source/get_remote_data_source.dart';
import 'package:movies/movie/domain/entites/movie.dart';
import 'package:movies/movie/domain/entites/movie_detail.dart';
import 'package:movies/movie/domain/entites/recommendation.dart';
import 'package:movies/movie/domain/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:movies/movie/domain/use_cases/get_movie_detail_usecase.dart';
import 'package:movies/movie/domain/use_cases/get_movie_recommendation_usecase.dart';

class MovieRepository implements BaseMovieRepository{
  final BaseMovieRemoteDateSource baseMovieRemoteDateSource;

  MovieRepository(this.baseMovieRemoteDateSource);
  @override
  Future<Either< Failur ,List<Movie>>> getNowPlayingMovie() async {
    final result = await baseMovieRemoteDateSource.getNowPlayingMovie();
      try{
        return Right(result);
      }on ServerExeption catch (failur){
       return Left(ServerFailur(failur.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either< Failur ,List<Movie>>> getPopularMovie() async{
    final result = await baseMovieRemoteDateSource.getNowPlayingMovie();
    try{
      return Right(result);
    }on ServerExeption catch (failur){
      return Left(ServerFailur(failur.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either< Failur ,List<Movie>>> getTopRatedMovie() async {
    final result = await baseMovieRemoteDateSource.getNowPlayingMovie();
    try{
      return Right(result);
    }on ServerExeption catch (failur){
      return Left(ServerFailur(failur.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failur, MovieDetail>> getMovieDetail(MovieDetailParameter parameter) async{
    final result = await baseMovieRemoteDateSource.getMovieDetail( parameter);
    try{
      return Right(result);
    }on ServerExeption catch (failur){
      return Left(ServerFailur(failur.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failur, List<MovieRecommendation>>> getRecommendation(RecommendationParmeter parameter)async {
    final result = await baseMovieRemoteDateSource.getRecommendation(parameter);
    try{
      return Right(result);
    }on ServerExeption catch (failur){
      return Left(ServerFailur(failur.errorMessageModel.statusMessage));
    }
  }

}