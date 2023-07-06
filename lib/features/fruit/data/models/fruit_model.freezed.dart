// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fruit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FruitModel _$FruitModelFromJson(Map<String, dynamic> json) {
  return _FruitModel.fromJson(json);
}

/// @nodoc
mixin _$FruitModel {
  String? get name => throw _privateConstructorUsedError;
  String? get family => throw _privateConstructorUsedError;
  String? get genus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FruitModelCopyWith<FruitModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FruitModelCopyWith<$Res> {
  factory $FruitModelCopyWith(FruitModel value, $Res Function(FruitModel) then) =
      _$FruitModelCopyWithImpl<$Res, FruitModel>;
  @useResult
  $Res call({String? name, String? family, String? genus});
}

/// @nodoc
class _$FruitModelCopyWithImpl<$Res, $Val extends FruitModel> implements $FruitModelCopyWith<$Res> {
  _$FruitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? family = freezed,
    Object? genus = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String?,
      genus: freezed == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FruitModelCopyWith<$Res> implements $FruitModelCopyWith<$Res> {
  factory _$$_FruitModelCopyWith(_$_FruitModel value, $Res Function(_$_FruitModel) then) =
      __$$_FruitModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? family, String? genus});
}

/// @nodoc
class __$$_FruitModelCopyWithImpl<$Res> extends _$FruitModelCopyWithImpl<$Res, _$_FruitModel>
    implements _$$_FruitModelCopyWith<$Res> {
  __$$_FruitModelCopyWithImpl(_$_FruitModel _value, $Res Function(_$_FruitModel) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? family = freezed,
    Object? genus = freezed,
  }) {
    return _then(_$_FruitModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String?,
      genus: freezed == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FruitModel implements _FruitModel {
  const _$_FruitModel({this.name, this.family, this.genus});

  factory _$_FruitModel.fromJson(Map<String, dynamic> json) => _$$_FruitModelFromJson(json);

  @override
  final String? name;
  @override
  final String? family;
  @override
  final String? genus;

  @override
  String toString() {
    return 'FruitModel(name: $name, family: $family, genus: $genus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FruitModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.genus, genus) || other.genus == genus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, family, genus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FruitModelCopyWith<_$_FruitModel> get copyWith => __$$_FruitModelCopyWithImpl<_$_FruitModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FruitModelToJson(
      this,
    );
  }
}

abstract class _FruitModel implements FruitModel {
  const factory _FruitModel({final String? name, final String? family, final String? genus}) = _$_FruitModel;

  factory _FruitModel.fromJson(Map<String, dynamic> json) = _$_FruitModel.fromJson;

  @override
  String? get name;
  @override
  String? get family;
  @override
  String? get genus;
  @override
  @JsonKey(ignore: true)
  _$$_FruitModelCopyWith<_$_FruitModel> get copyWith => throw _privateConstructorUsedError;
}
