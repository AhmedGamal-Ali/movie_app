import 'package:equatable/equatable.dart';
abstract class MovieEvent extends Equatable {
  @override
  List<Object> get props => [];

  MovieEvent();
}

class GetNowPlayingMovieEvent extends MovieEvent {
}

class GetPopularMovieEvent extends MovieEvent {
}

class GetTopRatedMovieEvent extends MovieEvent {
}
