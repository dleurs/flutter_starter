import 'package:freezed_annotation/freezed_annotation.dart';

part 'fruit_model.freezed.dart';
part 'fruit_model.g.dart';

@freezed
class FruitModel with _$FruitModel {
  const factory FruitModel({
    String? name,
    String? family,
    String? genus,
  }) = _FruitModel;

  factory FruitModel.fromJson(Map<String, dynamic> json) =>
      _$FruitModelFromJson(json);
}
