// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'film_budget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilmBudget _$FilmBudgetFromJson(Map<String, dynamic> json) {
  return _FilmBudget.fromJson(json);
}

/// @nodoc
mixin _$FilmBudget {
  int? get value => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmBudgetCopyWith<FilmBudget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmBudgetCopyWith<$Res> {
  factory $FilmBudgetCopyWith(
          FilmBudget value, $Res Function(FilmBudget) then) =
      _$FilmBudgetCopyWithImpl<$Res, FilmBudget>;
  @useResult
  $Res call({int? value, String currency});
}

/// @nodoc
class _$FilmBudgetCopyWithImpl<$Res, $Val extends FilmBudget>
    implements $FilmBudgetCopyWith<$Res> {
  _$FilmBudgetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilmBudgetCopyWith<$Res>
    implements $FilmBudgetCopyWith<$Res> {
  factory _$$_FilmBudgetCopyWith(
          _$_FilmBudget value, $Res Function(_$_FilmBudget) then) =
      __$$_FilmBudgetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? value, String currency});
}

/// @nodoc
class __$$_FilmBudgetCopyWithImpl<$Res>
    extends _$FilmBudgetCopyWithImpl<$Res, _$_FilmBudget>
    implements _$$_FilmBudgetCopyWith<$Res> {
  __$$_FilmBudgetCopyWithImpl(
      _$_FilmBudget _value, $Res Function(_$_FilmBudget) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? currency = null,
  }) {
    return _then(_$_FilmBudget(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilmBudget extends _FilmBudget {
  _$_FilmBudget({this.value, this.currency = '€'}) : super._();

  factory _$_FilmBudget.fromJson(Map<String, dynamic> json) =>
      _$$_FilmBudgetFromJson(json);

  @override
  final int? value;
  @override
  @JsonKey()
  final String currency;

  @override
  String toString() {
    return 'FilmBudget(value: $value, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilmBudget &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilmBudgetCopyWith<_$_FilmBudget> get copyWith =>
      __$$_FilmBudgetCopyWithImpl<_$_FilmBudget>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilmBudgetToJson(
      this,
    );
  }
}

abstract class _FilmBudget extends FilmBudget {
  factory _FilmBudget({final int? value, final String currency}) =
      _$_FilmBudget;
  _FilmBudget._() : super._();

  factory _FilmBudget.fromJson(Map<String, dynamic> json) =
      _$_FilmBudget.fromJson;

  @override
  int? get value;
  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$_FilmBudgetCopyWith<_$_FilmBudget> get copyWith =>
      throw _privateConstructorUsedError;
}
