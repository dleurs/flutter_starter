// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter_starter/core/constants/app_constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fruit_entity.freezed.dart';

@freezed
class FruitEntity with _$FruitEntity {
  const factory FruitEntity({
    required String name,
    required String family,
    required FruitGenus genus,
  }) = _FruitEntity;
}

// Added an enum here for example purpuse. Could have created a String
enum FruitGenus {
  citrus(name: 'Citrus'),
  unknown(name: AppConstants.emptyString);

  final String name;

  const FruitGenus({required this.name});

  @override
  String toString() => "FruitGenus($name)";

  static getFruitGenus(String? name) =>
      FruitGenus.values.firstOrNullWhere((element) => element.name == name) ?? FruitGenus.unknown;
}
