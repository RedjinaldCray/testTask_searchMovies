// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_budget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilmBudget _$$_FilmBudgetFromJson(Map<String, dynamic> json) =>
    _$_FilmBudget(
      value: json['value'] as int?,
      currency: json['currency'] as String? ?? '€',
    );

Map<String, dynamic> _$$_FilmBudgetToJson(_$_FilmBudget instance) =>
    <String, dynamic>{
      'value': instance.value,
      'currency': instance.currency,
    };
