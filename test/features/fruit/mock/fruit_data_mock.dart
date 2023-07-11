import 'package:flutter_starter/features/fruit/data/models/fruit_model.dart';
import 'package:flutter_starter/features/fruit/domain/entities/fruit_entity.dart';

class FruitDataMock {
  static const fruitsJson = [
    {
      "name": "Persimmon",
      "id": 52,
      "family": "Ebenaceae",
      "order": "Rosales",
      "genus": "Diospyros",
      "nutritions": {"calories": 81, "fat": 0.0, "sugar": 18.0, "carbohydrates": 18.0, "protein": 0.0}
    },
    {
      "name": "Lemon",
      "id": 26,
      "family": "Rutaceae",
      "order": "Sapindales",
      "genus": "Citrus",
      "nutritions": {"calories": 29, "fat": 0.3, "sugar": 2.5, "carbohydrates": 9.0, "protein": 1.1}
    },
  ];

  static const fruitsModel = [
    FruitModel(
      name: "Persimmon",
      family: "Ebenaceae",
      genus: "Diospyros",
    ),
    FruitModel(
      name: "Lemon",
      family: "Rutaceae",
      genus: "Citrus",
    ),
  ];

  static const fruitsEntity = [
    FruitEntity(
      name: "Persimmon",
      family: "Ebenaceae",
      genus: FruitGenus.unknown,
    ),
    FruitEntity(
      name: "Lemon",
      family: "Rutaceae",
      genus: FruitGenus.citrus,
    ),
  ];
}
