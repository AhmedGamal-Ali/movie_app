import 'package:movies/core/network/error_message_model.dart';

class ServerExeption implements Exception{
  final ErrorMessageModel errorMessageModel;

  ServerExeption({required this.errorMessageModel});
}