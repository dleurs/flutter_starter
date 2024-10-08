import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_starter/features/fruit/domain/entities/fruit_entity.dart';
import 'package:flutter_starter/features/fruit/domain/usecases/get_fruit_usecase.dart';
import 'package:flutter_starter/features/fruit/presentation/cubit/fruit_cubit.dart';
import 'package:flutter_starter/features/fruit/presentation/cubit/fruit_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/fruit_class_mock.dart';
import '../../mock/fruit_data_mock.dart';

void main() {
  late GetFruitUseCase mockGetFruitUseCase;

  setUp(() {
    mockGetFruitUseCase = MockGetFruitUseCase();
  });

  FruitCubit buildCubit() {
    return FruitCubit(getFruitUseCase: mockGetFruitUseCase);
  }

  group('[Fruit] [Cubit] :', () {
    final TimeoutException timeoutException = TimeoutException('timeout');

    group('constructor', () {
      test('works properly', () {
        //THEN
        expect(buildCubit, returnsNormally);
      });
    });

    blocTest<FruitCubit, FruitState>(
      'cubit.getFruits() when success',
      setUp: () {
        when(() => mockGetFruitUseCase()).thenAnswer(
          (_) async => Future<Either<Exception, List<FruitEntity>>>.value(
            const Right<Exception, List<FruitEntity>>(
              FruitDataMock.fruitsEntity,
            ),
          ),
        );
      },

      //WHEN
      build: buildCubit,
      act: (FruitCubit cubit) => cubit.getFruits(),
      //THEN
      expect: () => <FruitState>[
        const FruitState(
          isLoading: true,
        ),
        const FruitState(
          fruits: FruitDataMock.fruitsEntity,
        ),
      ],
    );

    blocTest<FruitCubit, FruitState>(
      'cubit.getFruits() when failure',

      setUp: () {
        when(() => mockGetFruitUseCase()).thenAnswer(
          (_) async => Future<Either<Exception, List<FruitEntity>>>.value(
            Left<Exception, List<FruitEntity>>(timeoutException),
          ),
        );
      },

      //WHEN
      build: buildCubit,
      act: (FruitCubit cubit) => cubit.getFruits(),
      //THEN
      expect: () => <FruitState>[
        const FruitState(
          isLoading: true,
        ),
        FruitState(
          fruits: <FruitEntity>[],
          errorMessage: timeoutException.toString(),
        ),
      ],
    );
  });
}
