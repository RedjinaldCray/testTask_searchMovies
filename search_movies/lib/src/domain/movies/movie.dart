import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_movies/src/domain/movies/film_budget.dart';
import 'package:search_movies/src/domain/movies/film_logo.dart';
part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  factory Movie(
      {int? id,
      @Default('') String name,
      @Default(2000) int year,
      @Default('') String description,
      @Default('') String shortDescription,
      @JsonKey(name: 'poster') FilmLogo? poster,
      @Default(120) int movieLength,
      @Default(18) int ageRating,
      @JsonKey(name: 'budget') FilmBudget? budget}) = _Movie;

  const Movie._();

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
