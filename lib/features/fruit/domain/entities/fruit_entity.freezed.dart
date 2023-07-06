// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fruit_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FruitEntity {
  String get name => throw _privateConstructorUsedError;
  String get family => throw _privateConstructorUsedError;
  FruitGenus get genus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FruitEntityCopyWith<FruitEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FruitEntityCopyWith<$Res> {
  factory $FruitEntityCopyWith(
          FruitEntity value, $Res Function(FruitEntity) then) =
      _$FruitEntityCopyWithImpl<$Res, FruitEntity>;
  @useResult
  $Res call({String name, String family, FruitGenus genus});
}

/// @nodoc
class _$FruitEntityCopyWithImpl<$Res, $Val extends FruitEntity>
    implements $FruitEntityCopyWith<$Res> {
  _$FruitEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? family = null,
    Object? genus = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      genus: null == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as FruitGenus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FruitEntityCopyWith<$Res>
    implements $FruitEntityCopyWith<$Res> {
  factory _$$_FruitEntityCopyWith(
          _$_FruitEntity value, $Res Function(_$_FruitEntity) then) =
      __$$_FruitEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String family, FruitGenus genus});
}

/// @nodoc
class __$$_FruitEntityCopyWithImpl<$Res>
    extends _$FruitEntityCopyWithImpl<$Res, _$_FruitEntity>
    implements _$$_FruitEntityCopyWith<$Res> {
  __$$_FruitEntityCopyWithImpl(
      _$_FruitEntity _value, $Res Function(_$_FruitEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? family = null,
    Object? genus = null,
  }) {
    return _then(_$_FruitEntity(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      genus: null == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as FruitGenus,
    ));
  }
}

/// @nodoc

class _$_FruitEntity implements _FruitEntity {
  const _$_FruitEntity(
      {required this.name, required this.family, required this.genus});

  @override
  final String name;
  @override
  final String family;
  @override
  final FruitGenus genus;

  @override
  String toString() {
    return 'FruitEntity(name: $name, family: $family, genus: $genus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FruitEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.genus, genus) || other.genus == genus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, family, genus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FruitEntityCopyWith<_$_FruitEntity> get copyWith =>
      __$$_FruitEntityCopyWithImpl<_$_FruitEntity>(this, _$identity);
}

abstract class _FruitEntity implements FruitEntity {
  const factory _FruitEntity(
      {required final String name,
      required final String family,
      required final FruitGenus genus}) = _$_FruitEntity;

  @override
  String get name;
  @override
  String get family;
  @override
  FruitGenus get genus;
  @override
  @JsonKey(ignore: true)
  _$$_FruitEntityCopyWith<_$_FruitEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
