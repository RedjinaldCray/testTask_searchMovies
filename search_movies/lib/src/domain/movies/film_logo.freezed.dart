// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'film_logo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilmLogo _$FilmLogoFromJson(Map<String, dynamic> json) {
  return _FilmLogo.fromJson(json);
}

/// @nodoc
mixin _$FilmLogo {
  String get url => throw _privateConstructorUsedError;
  String get previewUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmLogoCopyWith<FilmLogo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmLogoCopyWith<$Res> {
  factory $FilmLogoCopyWith(FilmLogo value, $Res Function(FilmLogo) then) =
      _$FilmLogoCopyWithImpl<$Res, FilmLogo>;
  @useResult
  $Res call({String url, String previewUrl});
}

/// @nodoc
class _$FilmLogoCopyWithImpl<$Res, $Val extends FilmLogo>
    implements $FilmLogoCopyWith<$Res> {
  _$FilmLogoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? previewUrl = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilmLogoCopyWith<$Res> implements $FilmLogoCopyWith<$Res> {
  factory _$$_FilmLogoCopyWith(
          _$_FilmLogo value, $Res Function(_$_FilmLogo) then) =
      __$$_FilmLogoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String previewUrl});
}

/// @nodoc
class __$$_FilmLogoCopyWithImpl<$Res>
    extends _$FilmLogoCopyWithImpl<$Res, _$_FilmLogo>
    implements _$$_FilmLogoCopyWith<$Res> {
  __$$_FilmLogoCopyWithImpl(
      _$_FilmLogo _value, $Res Function(_$_FilmLogo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? previewUrl = null,
  }) {
    return _then(_$_FilmLogo(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilmLogo extends _FilmLogo {
  _$_FilmLogo({this.url = '', this.previewUrl = ''}) : super._();

  factory _$_FilmLogo.fromJson(Map<String, dynamic> json) =>
      _$$_FilmLogoFromJson(json);

  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String previewUrl;

  @override
  String toString() {
    return 'FilmLogo(url: $url, previewUrl: $previewUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilmLogo &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, previewUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilmLogoCopyWith<_$_FilmLogo> get copyWith =>
      __$$_FilmLogoCopyWithImpl<_$_FilmLogo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilmLogoToJson(
      this,
    );
  }
}

abstract class _FilmLogo extends FilmLogo {
  factory _FilmLogo({final String url, final String previewUrl}) = _$_FilmLogo;
  _FilmLogo._() : super._();

  factory _FilmLogo.fromJson(Map<String, dynamic> json) = _$_FilmLogo.fromJson;

  @override
  String get url;
  @override
  String get previewUrl;
  @override
  @JsonKey(ignore: true)
  _$$_FilmLogoCopyWith<_$_FilmLogo> get copyWith =>
      throw _privateConstructorUsedError;
}
