import 'dart:async';

import 'package:dartz/dartz.dart';

abstract class BaseFutureUseCase<E, T, P> {
  Future<Either<E, T>> call(P params);
}

abstract class BaseFutureWithEmptyParamsUseCase<E, T> {
  Future<Either<E, T>> call();
}

abstract class BaseStreamWithEmptyParamsUseCase<E, T> {
  Stream<Either<E, T>> call();
}
