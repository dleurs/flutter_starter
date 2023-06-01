import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_starter/features/authentication/domain/entities/token.dart';
import 'package:flutter_starter/features/authentication/domain/repository/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  AuthenticationRepositoryImpl();

  @override
  Future<Either<Exception, Token>> login(String email, String password) async {
    try {
      //final Token result =
      await Future<void>.delayed(const Duration(milliseconds: 500));
      //if (result.data != null) {
      return Right(Token(accessToken: '123abd', refreshToken: '456efg'));
      /* } else {
        return const Left(FormatException('Wrong email or password'));
      } */
    } on DioError catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, bool>> logout() async {
    try {
      //final Token result =
      await Future<void>.delayed(const Duration(milliseconds: 500));
      //if (result.data != null) {
      return const Right(true);
      /* } else {
        return const Left(FormatException('Wrong email or password'));
      } */
    } on DioError catch (e) {
      return Left(e);
    }
  }
}
