// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fruit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FruitState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<FruitEntity> get fruits => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FruitStateCopyWith<FruitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FruitStateCopyWith<$Res> {
  factory $FruitStateCopyWith(
          FruitState value, $Res Function(FruitState) then) =
      _$FruitStateCopyWithImpl<$Res, FruitState>;
  @useResult
  $Res call({bool isLoading, List<FruitEntity> fruits, String? errorMessage});
}

/// @nodoc
class _$FruitStateCopyWithImpl<$Res, $Val extends FruitState>
    implements $FruitStateCopyWith<$Res> {
  _$FruitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? fruits = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fruits: null == fruits
          ? _value.fruits
          : fruits // ignore: cast_nullable_to_non_nullable
              as List<FruitEntity>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FruitStateCopyWith<$Res>
    implements $FruitStateCopyWith<$Res> {
  factory _$$_FruitStateCopyWith(
          _$_FruitState value, $Res Function(_$_FruitState) then) =
      __$$_FruitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<FruitEntity> fruits, String? errorMessage});
}

/// @nodoc
class __$$_FruitStateCopyWithImpl<$Res>
    extends _$FruitStateCopyWithImpl<$Res, _$_FruitState>
    implements _$$_FruitStateCopyWith<$Res> {
  __$$_FruitStateCopyWithImpl(
      _$_FruitState _value, $Res Function(_$_FruitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? fruits = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_FruitState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fruits: null == fruits
          ? _value._fruits
          : fruits // ignore: cast_nullable_to_non_nullable
              as List<FruitEntity>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FruitState implements _FruitState {
  const _$_FruitState(
      {this.isLoading = false,
      final List<FruitEntity> fruits = const [],
      this.errorMessage})
      : _fruits = fruits;

  @override
  @JsonKey()
  final bool isLoading;
  final List<FruitEntity> _fruits;
  @override
  @JsonKey()
  List<FruitEntity> get fruits {
    if (_fruits is EqualUnmodifiableListView) return _fruits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fruits);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'FruitState(isLoading: $isLoading, fruits: $fruits, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FruitState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._fruits, _fruits) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_fruits), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FruitStateCopyWith<_$_FruitState> get copyWith =>
      __$$_FruitStateCopyWithImpl<_$_FruitState>(this, _$identity);
}

abstract class _FruitState implements FruitState {
  const factory _FruitState(
      {final bool isLoading,
      final List<FruitEntity> fruits,
      final String? errorMessage}) = _$_FruitState;

  @override
  bool get isLoading;
  @override
  List<FruitEntity> get fruits;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_FruitStateCopyWith<_$_FruitState> get copyWith =>
      throw _privateConstructorUsedError;
}
