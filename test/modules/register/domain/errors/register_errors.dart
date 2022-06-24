import 'package:chat_app/core/error/failure.dart';

class InvalidParams extends Failure {
  InvalidParams({required String errorMessage, required exception})
      : super(
          errorMessage: 'No data founds',
          exception: exception,
        );
}

class UserExist extends Failure {
  UserExist({required String errorMessage, required exception})
      : super(
          errorMessage: 'User already exist',
          exception: exception,
        );
}
