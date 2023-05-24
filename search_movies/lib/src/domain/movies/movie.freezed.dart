// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster')
  FilmLogo? get poster => throw _privateConstructorUsedError;
  int get movieLength => throw _privateConstructorUsedError;
  int get ageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'budget')
  FilmBudget? get budget => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {int? id,
      String name,
      int year,
      String description,
      String shortDescription,
      @JsonKey(name: 'poster') FilmLogo? poster,
      int movieLength,
      int ageRating,
      @JsonKey(name: 'budget') FilmBudget? budget});

  $FilmLogoCopyWith<$Res>? get poster;
  $FilmBudgetCopyWith<$Res>? get budget;
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? year = null,
    Object? description = null,
    Object? shortDescription = null,
    Object? poster = freezed,
    Object? movieLength = null,
    Object? ageRating = null,
    Object? budget = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as FilmLogo?,
      movieLength: null == movieLength
          ? _value.movieLength
          : movieLength // ignore: cast_nullable_to_non_nullable
              as int,
      ageRating: null == ageRating
          ? _value.ageRating
          : ageRating // ignore: cast_nullable_to_non_nullable
              as int,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as FilmBudget?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FilmLogoCopyWith<$Res>? get poster {
    if (_value.poster == null) {
      return null;
    }

    return $FilmLogoCopyWith<$Res>(_value.poster!, (value) {
      return _then(_value.copyWith(poster: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FilmBudgetCopyWith<$Res>? get budget {
    if (_value.budget == null) {
      return null;
    }

    return $FilmBudgetCopyWith<$Res>(_value.budget!, (value) {
      return _then(_value.copyWith(budget: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$_MovieCopyWith(_$_Movie value, $Res Function(_$_Movie) then) =
      __$$_MovieCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String name,
      int year,
      String description,
      String shortDescription,
      @JsonKey(name: 'poster') FilmLogo? poster,
      int movieLength,
      int ageRating,
      @JsonKey(name: 'budget') FilmBudget? budget});

  @override
  $FilmLogoCopyWith<$Res>? get poster;
  @override
  $FilmBudgetCopyWith<$Res>? get budget;
}

/// @nodoc
class __$$_MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res, _$_Movie>
    implements _$$_MovieCopyWith<$Res> {
  __$$_MovieCopyWithImpl(_$_Movie _value, $Res Function(_$_Movie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? year = null,
    Object? description = null,
    Object? shortDescription = null,
    Object? poster = freezed,
    Object? movieLength = null,
    Object? ageRating = null,
    Object? budget = freezed,
  }) {
    return _then(_$_Movie(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as FilmLogo?,
      movieLength: null == movieLength
          ? _value.movieLength
          : movieLength // ignore: cast_nullable_to_non_nullable
              as int,
      ageRating: null == ageRating
          ? _value.ageRating
          : ageRating // ignore: cast_nullable_to_non_nullable
              as int,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as FilmBudget?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movie extends _Movie {
  _$_Movie(
      {this.id,
      this.name = '',
      this.year = 2000,
      this.description = '',
      this.shortDescription = '',
      @JsonKey(name: 'poster') this.poster,
      this.movieLength = 120,
      this.ageRating = 18,
      @JsonKey(name: 'budget') this.budget})
      : super._();

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$$_MovieFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int year;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String shortDescription;
  @override
  @JsonKey(name: 'poster')
  final FilmLogo? poster;
  @override
  @JsonKey()
  final int movieLength;
  @override
  @JsonKey()
  final int ageRating;
  @override
  @JsonKey(name: 'budget')
  final FilmBudget? budget;

  @override
  String toString() {
    return 'Movie(id: $id, name: $name, year: $year, description: $description, shortDescription: $shortDescription, poster: $poster, movieLength: $movieLength, ageRating: $ageRating, budget: $budget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Movie &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.movieLength, movieLength) ||
                other.movieLength == movieLength) &&
            (identical(other.ageRating, ageRating) ||
                other.ageRating == ageRating) &&
            (identical(other.budget, budget) || other.budget == budget));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, year, description,
      shortDescription, poster, movieLength, ageRating, budget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      __$$_MovieCopyWithImpl<_$_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieToJson(
      this,
    );
  }
}

abstract class _Movie extends Movie {
  factory _Movie(
      {final int? id,
      final String name,
      final int year,
      final String description,
      final String shortDescription,
      @JsonKey(name: 'poster') final FilmLogo? poster,
      final int movieLength,
      final int ageRating,
      @JsonKey(name: 'budget') final FilmBudget? budget}) = _$_Movie;
  _Movie._() : super._();

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  int get year;
  @override
  String get description;
  @override
  String get shortDescription;
  @override
  @JsonKey(name: 'poster')
  FilmLogo? get poster;
  @override
  int get movieLength;
  @override
  int get ageRating;
  @override
  @JsonKey(name: 'budget')
  FilmBudget? get budget;
  @override
  @JsonKey(ignore: true)
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      throw _privateConstructorUsedError;
}
