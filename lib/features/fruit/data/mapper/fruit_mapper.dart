import 'package:flutter_starter/core/constants/app_constants.dart';
import 'package:flutter_starter/features/fruit/data/models/fruit_model.dart';
import 'package:flutter_starter/features/fruit/domain/entities/fruit_entity.dart';

extension FruitMapper on FruitModel {
  FruitEntity toEntity() => FruitEntity(
      name: name ?? AppConstants.emptyString,
      family: family ?? AppConstants.emptyString,
      genus: FruitGenus.getFruitGenus(genus));
}

extension FruitListMapper on List<FruitModel>? {
  List<FruitEntity> toEntity() => this?.map((model) => model.toEntity()).toList() ?? List.empty();
}
