import 'package:dartz/dartz.dart';
import 'package:movies/error/failur.dart';
import 'package:movies/movie/domain/entites/movie.dart';
import 'package:movies/movie/domain/entites/movie_detail.dart';
import 'package:movies/movie/domain/entites/recommendation.dart';
import 'package:movies/movie/domain/use_cases/get_movie_detail_usecase.dart';
import 'package:movies/movie/domain/use_cases/get_movie_recommendation_usecase.dart';

abstract class BaseMovieRepository{

 Future<Either< Failur ,List<Movie>>> getNowPlayingMovie();

 Future<Either< Failur ,List<Movie>>> getPopularMovie();

 Future<Either< Failur ,List<Movie>>>getTopRatedMovie();

 Future<Either< Failur ,MovieDetail>>getMovieDetail(MovieDetailParameter parameter);

 Future<Either< Failur ,List<MovieRecommendation>>>getRecommendation(RecommendationParmeter parameter);

}