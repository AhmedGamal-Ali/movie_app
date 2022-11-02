import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/base_usecase/base_usecase.dart';
import 'package:movies/core/utils/enum.dart';
import 'package:movies/movie/domain/use_cases/get_now_playing_movie_usecase.dart';
import 'package:movies/movie/domain/use_cases/get_popular_movie_usecase.dart';
import 'package:movies/movie/domain/use_cases/get_top_rated_movie_usecase.dart';
import 'package:movies/movie/presentation/contraller/movie_event.dart';
import 'package:movies/movie/presentation/contraller/movie_state.dart';


class MovieBloc extends Bloc<MovieEvent, MovieState> {
  GetNowPlayingMovie getNowPlayingMovie;
  GetPopularMovie getPopularMovie;
  GetTopRatedMovie getTopRatedMovie;
  MovieBloc(this.getNowPlayingMovie,this.getPopularMovie,this.getTopRatedMovie,) : super(MovieState()) {
    on<GetNowPlayingMovieEvent>((event, emit) async {
      final result = await getNowPlayingMovie(NoPrameter());
      emit(MovieState(nowPlayingState: RequestState.loading));
      result.fold(
          (l) => emit(state.copyWith(
            nowPlayingState: RequestState.loaded,
                nowPlayingMessage: l.message,
          )),
          (r) => emit(state.copyWith(
            nowPlayingMovie: r,
            nowPlayingState: RequestState.loaded
          )));
    });
    on<GetPopularMovieEvent>((event, emit) async{
      final result = await getPopularMovie(NoPrameter());
      result.fold((l) => emit(state.copyWith(
        popularState: RequestState.loaded,
        popularMessage: l.message,

      )), (r) =>emit(state.copyWith(
        popularMovie: r,
        popularState: RequestState.loaded
      )));
    });
    on<GetTopRatedMovieEvent>((event, emit) async{
      final result = await getTopRatedMovie(NoPrameter());
      result.fold((l) => emit(state.copyWith(
        topRatedState: RequestState.loaded,
        topRatedMessage: l.message,

      )), (r) =>emit(state.copyWith(
          topRatedMovie: r,
          topRatedState: RequestState.loaded
      )));
    });
  }
}
