import 'package:flutter_starter/features/fruit/data/mapper/fruit_mapper.dart';
import 'package:flutter_starter/features/fruit/data/models/fruit_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mock/fruit_mock.dart';

void main() {
  group('[Fruit] [Mapper] :', () {
    test('FruitModel from Json', () {
      final modelFromJson = FruitModel.fromJson(FruitMock.fruitsJson[0]);
      expect(modelFromJson, equals(FruitMock.fruitsModel[0]));
    });
    test('FruitEntity from FruitModel', () {
      final entityFromModel = FruitMock.fruitsModel[0].toEntity();
      expect(entityFromModel, equals(FruitMock.fruitsEntity[0]));
    });

    test('FruitsEntity (list) from FruitsModel (list)', () {
      final entitiesFromModels = FruitMock.fruitsModel.toEntity();
      expect(entitiesFromModels, equals(FruitMock.fruitsEntity));
    });
  });
}
