// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:flutter_starter/features/fruit/domain/entities/fruit.dart';

class FruitState {
  final bool isLoading;
  final List<Fruit> fruits;
  final String? errorMessage;
  FruitState({
    this.isLoading = false,
    this.fruits = const [],
    this.errorMessage,
  });

  FruitState copyWith({
    bool? isLoading,
    List<Fruit>? fruits,
    String? errorMessage,
  }) {
    return FruitState(
      isLoading: isLoading ?? this.isLoading,
      fruits: fruits ?? this.fruits,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isLoading': isLoading,
      'fruits': fruits.map((x) => x.toMap()).toList(),
      'errorMessage': errorMessage,
    };
  }

  factory FruitState.fromMap(Map<String, dynamic> map) {
    return FruitState(
      isLoading: map['isLoading'] as bool,
      fruits: List<Fruit>.from(
        (map['fruits'] as List<int>).map<Fruit>(
          (x) => Fruit.fromMap(x as Map<String, dynamic>),
        ),
      ),
      errorMessage: map['errorMessage'] != null ? map['errorMessage'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FruitState.fromJson(String source) => FruitState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'FruitState(isLoading: $isLoading, fruits: $fruits, errorMessage: $errorMessage)';

  @override
  bool operator ==(covariant FruitState other) {
    if (identical(this, other)) return true;

    return other.isLoading == isLoading && listEquals(other.fruits, fruits) && other.errorMessage == errorMessage;
  }

  @override
  int get hashCode => isLoading.hashCode ^ fruits.hashCode ^ errorMessage.hashCode;
}
