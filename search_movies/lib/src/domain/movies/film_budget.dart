import 'package:freezed_annotation/freezed_annotation.dart';
part 'film_budget.freezed.dart';
part 'film_budget.g.dart';

@freezed
class FilmBudget with _$FilmBudget {
  factory FilmBudget({int? value, @Default('€') String currency}) = _FilmBudget;

  const FilmBudget._();

  factory FilmBudget.fromJson(Map<String, dynamic> json) =>
      _$FilmBudgetFromJson(json);
}
