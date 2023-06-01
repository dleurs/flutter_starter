import 'package:dartz/dartz.dart';
import 'package:flutter_starter/features/authentication/domain/entities/token.dart';

abstract class AuthenticationRepository {
  Future<Either<Exception, Token>> login(String email, String password);
  Future<Either<Exception, bool>> logout();
}
