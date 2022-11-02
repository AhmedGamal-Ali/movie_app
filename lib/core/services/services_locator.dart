import 'package:get_it/get_it.dart';
import 'package:movies/movie/data/data_source/get_remote_data_source.dart';
import 'package:movies/movie/data/repository/movie_repository.dart';
import 'package:movies/movie/domain/repository/base_movie_repository.dart';
import 'package:movies/movie/domain/use_cases/get_movie_detail_usecase.dart';
import 'package:movies/movie/domain/use_cases/get_movie_recommendation_usecase.dart';
import 'package:movies/movie/domain/use_cases/get_now_playing_movie_usecase.dart';
import 'package:movies/movie/domain/use_cases/get_popular_movie_usecase.dart';
import 'package:movies/movie/domain/use_cases/get_top_rated_movie_usecase.dart';
import 'package:movies/movie/presentation/contraller/movie_bloc.dart';
import 'package:movies/movie/presentation/contraller/movie_detail_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    sl.registerLazySingleton<BaseMovieRemoteDateSource>(
        () => MovieRemoteDataSource());
    sl.registerLazySingleton<BaseMovieRepository>(() => MovieRepository(sl()));

    sl.registerLazySingleton(() => GetNowPlayingMovie(sl()));
    sl.registerLazySingleton(() => GetPopularMovie(sl()));
    sl.registerLazySingleton(() => GetTopRatedMovie(sl()));
    sl.registerLazySingleton(() => GetMovieDetailUseCase(sl()));
    sl.registerLazySingleton(() => GetMovieRecommendationUseCase(sl()));

    sl.registerFactory(() => MovieBloc(sl(),sl(),sl()));
    sl.registerFactory(() => MovieDetailBloc(sl(),sl()));
  }
}
