part of 'movie_detail_bloc.dart';

abstract class MovieDetailEvent extends Equatable {
  const MovieDetailEvent();
}

class GetMovieDetailEvent extends MovieDetailEvent {
  int id;

  @override
  List<Object> get props => [id];

  GetMovieDetailEvent( this.id);
}

class GetMovieRecomendedEvent extends MovieDetailEvent {
  int id;

  @override
  List<Object> get props => [id];

  GetMovieRecomendedEvent( this.id);
}

