import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/error/failur.dart';

abstract class BaseUseCase<T, Parameters> {
  Future<Either<Failur, T>> call(Parameters parameters);
}

class NoPrameter extends Equatable {
  NoPrameter();

  @override
  List<Object> get props => [];
}
