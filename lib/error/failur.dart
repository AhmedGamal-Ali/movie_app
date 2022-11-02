import 'package:equatable/equatable.dart';

abstract class Failur extends Equatable{
  final String message;

 const Failur(this.message);

  @override
  List<Object?> get props => [message];
}
 class ServerFailur extends Failur{
 const ServerFailur(super.message);

 }