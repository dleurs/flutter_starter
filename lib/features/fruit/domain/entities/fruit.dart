// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dart_extensions/dart_extensions.dart';

import 'package:flutter_starter/core/constants/app_constants.dart';

class Fruit {
  final String name;
  final String family;
  final FruitGenus genus;
  Fruit({
    required this.name,
    required this.family,
    required this.genus,
  });

  Fruit copyWith({
    String? name,
    String? family,
    FruitGenus? genus,
  }) {
    return Fruit(
      name: name ?? this.name,
      family: family ?? this.family,
      genus: genus ?? this.genus,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'family': family,
      'genus': genus.name,
    };
  }

  factory Fruit.fromMap(Map<String, dynamic> map) {
    return Fruit(
      name: map['name'] as String,
      family: map['family'] as String,
      genus: FruitGenus.getFruitGenus(map['genus']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Fruit.fromJson(String source) =>
      Fruit.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Fruit(name: $name, family: $family, genus: $genus)';

  @override
  bool operator ==(covariant Fruit other) {
    if (identical(this, other)) return true;

    return other.name == name && other.family == family && other.genus == genus;
  }

  @override
  int get hashCode => name.hashCode ^ family.hashCode ^ genus.hashCode;
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
      FruitGenus.values.firstOrNullWhere((element) => element.name == name) ??
      FruitGenus.unknown;
}
