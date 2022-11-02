part of 'movie_detail_bloc.dart';

class MovieDetailState extends Equatable {
  final MovieDetail? movieDetail;
  final RequestState movieDetailrequestState;
  final String movieDetailMessage;
  final List<MovieRecommendation> movieRecommendation;
  final RequestState movieRecommendatinState;
  final String movieRecommendationMessage;

  MovieDetailState({
    this.movieDetail,
    this.movieDetailrequestState = RequestState.loading,
    this.movieDetailMessage = '',
    this.movieRecommendation = const [],
    this.movieRecommendatinState = RequestState.loading,
    this.movieRecommendationMessage = '',
  });

  MovieDetailState copyWith({
    MovieDetail? movieDetail,
    RequestState? movieDetailrequestState,
    String? movieDetailMessage,
    List<MovieRecommendation>? movieRecommendation,
    RequestState? movieRecommendatinState,
    String? movieRecommendationMessage,
  }) {
    return MovieDetailState(
        movieDetail: movieDetail ?? this.movieDetail,
        movieDetailrequestState:
            movieDetailrequestState ?? this.movieDetailrequestState,
        movieDetailMessage: movieDetailMessage ?? this.movieDetailMessage,
        movieRecommendation: movieRecommendation ?? this.movieRecommendation,
        movieRecommendatinState:
            movieDetailrequestState ?? this.movieDetailrequestState,
        movieRecommendationMessage:
            movieRecommendationMessage ?? this.movieRecommendationMessage);

  }

  @override
  List<Object?> get props => [
        movieDetail,
        movieDetailrequestState,
        movieDetailMessage,
        movieRecommendation,
        movieDetailrequestState,
        movieRecommendationMessage,
      ];
}
