import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/core/utils/enum.dart';
import 'package:movies/movie/domain/entites/movie_detail.dart';
import 'package:movies/movie/domain/entites/recommendation.dart';
import 'package:movies/movie/domain/use_cases/get_movie_detail_usecase.dart';
import 'package:movies/movie/domain/use_cases/get_movie_recommendation_usecase.dart';

part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  GetMovieDetailUseCase getMovieDetailUseCase;
  GetMovieRecommendationUseCase getMovieRecommendationUseCase;
  MovieDetailBloc( this.getMovieDetailUseCase,this.getMovieRecommendationUseCase) : super(MovieDetailState()) {
    on<GetMovieDetailEvent>((event, emit) async{
      final result = await getMovieDetailUseCase(MovieDetailParameter(id:event.id )) ;
      result.fold((l) => emit(state.copyWith(
        movieDetailrequestState: RequestState.error,
        movieDetailMessage: l.message,

      )), (r) {
        print("rrrrrrrrrrrrrr");
        print(r);
        emit(state.copyWith(
            movieDetail: r,
            movieDetailrequestState: RequestState.loaded
        ));
        print("rrrrrrrrrrrrrr");
        print(r);
      });
    });

    on<GetMovieRecomendedEvent>((event, emit) async{
      final result = await getMovieRecommendationUseCase(RecommendationParmeter(event.id)) ;
      result.fold((l) => emit(state.copyWith(
        movieRecommendatinState: RequestState.error,
        movieRecommendationMessage: l.message,

      )), (r) =>emit(state.copyWith(
          movieRecommendation: r,
          movieRecommendatinState: RequestState.loaded
      )));
    });
  }
}
