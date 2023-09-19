import '../../../../core/constants/app_constants.dart';
import '../../domain/entities/fruit_entity.dart';
import '../models/fruit_model.dart';

extension FruitMapper on FruitModel {
  FruitEntity toEntity() => FruitEntity(
        name: name ?? AppConstants.emptyString,
        family: family ?? AppConstants.emptyString,
        genus: FruitGenus.getFruitGenus(genus),
      );
}

extension FruitListMapper on List<FruitModel>? {
  List<FruitEntity> toEntity() =>
      this?.map((FruitModel model) => model.toEntity()).toList() ??
      List<FruitEntity>.empty();
}
