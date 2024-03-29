import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_starter/features/fruit/domain/entities/fruit_entity.dart';
import 'package:flutter_starter/features/fruit/domain/repository_abstract/fruit_repository.dart';
import 'package:flutter_starter/features/fruit/domain/usecases/get_fruit_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/fruit_class_mock.dart';
import '../../mock/fruit_data_mock.dart';

void main() {
  late GetFruitUseCase getFruitUseCase;
  late FruitRepository mockFruitRepository;

  setUp(() {
    mockFruitRepository = MockFruitRepository();
    getFruitUseCase = GetFruitUseCase(mockFruitRepository);
  });

  group('[Fruit] [Usecase] :', () {
    test('Calling getFruitUseCase() when success', () async {
      //GIVEN
      when(() => mockFruitRepository.getFruits()).thenAnswer(
        (_) async => Future<Either<Exception, List<FruitEntity>>>.value(
          const Right<Exception, List<FruitEntity>>(FruitDataMock.fruitsEntity),
        ),
      );
      //WHEN
      final Either<Exception, List<FruitEntity>> result =
          await getFruitUseCase();
      //THEN
      verify(
        () => mockFruitRepository.getFruits(),
      ).called(1);

      result.fold(
        (Exception error) => null,
        (List<FruitEntity> data) {
          expect(data, FruitDataMock.fruitsEntity);
        },
      );
    });

    test('Calling getFruitUseCase() when error', () async {
      final TimeoutException timeoutException = TimeoutException('timeout');
      //GIVEN
      when(() => mockFruitRepository.getFruits()).thenAnswer(
        (_) async => Future<Either<Exception, List<FruitEntity>>>.value(
          Left<Exception, List<FruitEntity>>(timeoutException),
        ),
      );
      //WHEN
      final Either<Exception, List<FruitEntity>> result =
          await getFruitUseCase();
      //THEN
      verify(
        () => mockFruitRepository.getFruits(),
      ).called(1);

      result.fold(
        (Exception error) => <void>{expect(error, timeoutException)},
        (List<FruitEntity> data) => null,
      );
    });
  });
}
