import 'dart:developer' as developer;

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/fruit_entity.dart';
import '../../domain/usecases/get_fruit_usecase.dart';
import 'fruit_state.dart';

@injectable
class FruitCubit extends Cubit<FruitState> {
  FruitCubit({
    required this.getFruitUseCase,
  }) : super(const FruitState());
  final GetFruitUseCase getFruitUseCase;

  Future<void> getFruits() async {
    emit(
      state.copyWith(
        isLoading: true,
        fruits: <FruitEntity>[],
        errorMessage: null,
      ),
    );
    final Either<Exception, List<FruitEntity>> eitherFruits =
        await getFruitUseCase();
    return eitherFruits.fold(
      (Exception error) {
        developer.log('Un error occured : $error');
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: error.toString(),
          ),
        );
      },
      (List<FruitEntity> value) {
        emit(
          state.copyWith(
            isLoading: false,
            fruits: value,
          ),
        );
      },
    );
  }
}
