// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_starter/core/constants/app_constants.dart';
import 'package:flutter_starter/features/fruit/domain/entities/fruit_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fruit_state.freezed.dart';

@freezed
class FruitState with _$FruitState {
  const factory FruitState({
    @Default(false) bool isLoading,
    @Default([]) List<FruitEntity> fruits,
    String? errorMessage,
  }) = _FruitState;
}
