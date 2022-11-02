import 'package:equatable/equatable.dart';

class Genre extends Equatable {
  int id;
  String name;

  Genre({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id,name,];
}