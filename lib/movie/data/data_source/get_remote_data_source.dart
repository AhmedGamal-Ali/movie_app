import 'package:movies/core/network/api_constance.dart';
import 'package:movies/core/network/error_message_model.dart';
import 'package:movies/error/exeptions.dart';
import 'package:movies/movie/data/models/movie_detail_model.dart';
import 'package:movies/movie/data/models/movie_model.dart';
import 'package:dio/dio.dart';
import 'package:movies/movie/data/models/recommendation_model.dart';
import 'package:movies/movie/domain/use_cases/get_movie_detail_usecase.dart';
import 'package:movies/movie/domain/use_cases/get_movie_recommendation_usecase.dart';

abstract class BaseMovieRemoteDateSource {
  Future<List<MovieModel>> getNowPlayingMovie();

  Future<List<MovieModel>> getPopularMovie();

  Future<List<MovieModel>> getTopRatedMovie();

  Future<MovieDetailModel> getMovieDetail(MovieDetailParameter parameter);

  Future<List<MovieRecommendationModel>> getRecommendation(RecommendationParmeter parameter);
}

class MovieRemoteDataSource implements BaseMovieRemoteDateSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovie() async {
    final response = await Dio().get(
        ApiConstance.nowPlayingMovie);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromjson(e)));
    } else {
      throw ServerExeption(
          errorMessageModel: ErrorMessageModel.fromjson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovie() async{
    final response = await Dio().get(
        ApiConstance.popularMovie);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromjson(e)));
    } else {
      throw ServerExeption(
          errorMessageModel: ErrorMessageModel.fromjson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovie() async {
    final response = await Dio().get(
        ApiConstance.topRatedMovie);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromjson(e)));
    } else {
      throw ServerExeption(
          errorMessageModel: ErrorMessageModel.fromjson(response.data));
    }
  }

  @override
  Future<MovieDetailModel> getMovieDetail(MovieDetailParameter parameter) async {
    final response = await Dio().get(
        ApiConstance.movieDetail(parameter.id));
    if (response.statusCode == 200) {
       return MovieDetailModel.fromjson(response.data);

    } else {
      throw ServerExeption(
          errorMessageModel: ErrorMessageModel.fromjson(response.data));
    }
  }

  @override
  Future<List<MovieRecommendationModel>> getRecommendation(RecommendationParmeter parameter) async {
    final response = await Dio().get(
        ApiConstance.movieRecommendation(parameter.id));
    if (response.statusCode == 200) {
      return List<MovieRecommendationModel>.from((response.data['results'] as List)
          .map((e) => MovieRecommendationModel.fromjson(e)));
    } else {
      throw ServerExeption(
          errorMessageModel: ErrorMessageModel.fromjson(response.data));
    }
  }
}
