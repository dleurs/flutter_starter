import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class FruitModel {
  final String? name;
  final String? family;
  final String? genus;
  FruitModel({
    this.name,
    this.family,
    this.genus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'family': family,
      'genus': genus,
    };
  }

  factory FruitModel.fromMap(Map<String, dynamic> map) {
    return FruitModel(
      name: map['name'] != null ? map['name'] as String : null,
      family: map['family'] != null ? map['family'] as String : null,
      genus: map['genus'] != null ? map['genus'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FruitModel.fromJson(String source) =>
      FruitModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
