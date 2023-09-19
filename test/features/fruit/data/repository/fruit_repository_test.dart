import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_starter/features/fruit/data/data_sources/fruit_api.dart';
import 'package:flutter_starter/features/fruit/data/models/fruit_model.dart';
import 'package:flutter_starter/features/fruit/data/repository/fruit_repository_impl.dart';
import 'package:flutter_starter/features/fruit/domain/entities/fruit_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/fruit_class_mock.dart';
import '../../mock/fruit_data_mock.dart';

void main() {
  late FruitApi mockFruitApi;
  late FruitRepositoryImpl repository;

  setUp(() {
    mockFruitApi = MockFruitApi();
    repository = FruitRepositoryImpl(mockFruitApi);
  });

  group('[Fruit] [Repository] :', () {
    test('Calling repository.getFruits() when success', () async {
      //GIVEN
      when(() => mockFruitApi.getFruits()).thenAnswer(
        (_) => Future<List<FruitModel>>.value(FruitDataMock.fruitsModel),
      );
      //WHEN
      final Either<Exception, List<FruitEntity>> result =
          await repository.getFruits();
      //THEN
      verify(
        () => mockFruitApi.getFruits(),
      ).called(1);

      result.fold(
        (Exception error) => null,
        (List<FruitEntity> data) {
          expect(data, FruitDataMock.fruitsEntity);
        },
      );
    });

    test('Calling repository.getFruits() when error', () async {
      final TimeoutException timeoutException = TimeoutException('timeout');
      //GIVEN
      when(() => mockFruitApi.getFruits()).thenThrow(timeoutException);
      //WHEN
      final Either<Exception, List<FruitEntity>> result =
          await repository.getFruits();
      //THEN
      verify(
        () => mockFruitApi.getFruits(),
      ).called(1);

      result.fold(
        (Exception error) {
          expect(error, timeoutException);
        },
        (List<FruitEntity> data) => null,
      );
    });
  });
}
