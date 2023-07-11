import 'dart:async';

import 'package:flutter_starter/features/fruit/data/data_sources/fruit_api.dart';
import 'package:flutter_starter/features/fruit/data/repository/fruit_repository_impl.dart';
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
        (_) => Future.value(FruitDataMock.fruitsModel),
      );
      //WHEN
      final result = await repository.getFruits();
      //THEN
      verify(
        () => mockFruitApi.getFruits(),
      ).called(1);

      result.fold(
        (error) => null,
        (data) {
          expect(data, FruitDataMock.fruitsEntity);
        },
      );
    });

    test('Calling repository.getFruits() when error', () async {
      final timeoutException = TimeoutException('timeout');
      //GIVEN
      when(() => mockFruitApi.getFruits()).thenThrow(timeoutException);
      //WHEN
      final result = await repository.getFruits();
      //THEN
      verify(
        () => mockFruitApi.getFruits(),
      ).called(1);

      result.fold(
        (error) {
          expect(error, timeoutException);
        },
        (data) => null,
      );
    });
  });
}
