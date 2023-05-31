import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/features/fruit/domain/usecases/get_fruit_usecase.dart';
import 'package:flutter_starter/features/fruit/presentation/cubit/fruit_state.dart';
import 'package:injectable/injectable.dart';
import 'dart:developer' as developer;

@injectable
class FruitCubit extends Cubit<FruitState> {
  final GetFruitUseCase getFruitUseCase;

  FruitCubit({
    required this.getFruitUseCase,
  }) : super(FruitState());

  Future<void> getFruits() async {
    emit(state.copyWith(
      isLoading: true,
      fruits: [],
      errorMessage: null,
    ));
    final eitherFruits = await getFruitUseCase();
    return eitherFruits.fold(
      (error) {
        developer.log('Un error occured : ${error.toString()}');
        emit(state.copyWith(
          isLoading: false,
          errorMessage: error.toString(),
        ));
      },
      (value) {
        emit(state.copyWith(
          isLoading: false,
          fruits: value,
        ));
      },
    );
  }
}
