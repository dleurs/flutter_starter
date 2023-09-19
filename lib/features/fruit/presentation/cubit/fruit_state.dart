import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/fruit_entity.dart';

part 'fruit_state.freezed.dart';

@freezed
class FruitState with _$FruitState {
  const factory FruitState({
    @Default(false) bool isLoading,
    @Default(<FruitEntity>[]) List<FruitEntity> fruits,
    String? errorMessage,
  }) = _FruitState;
}
