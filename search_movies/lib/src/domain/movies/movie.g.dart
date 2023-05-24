// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      id: json['id'] as int?,
      name: json['name'] as String? ?? '',
      year: json['year'] as int? ?? 2000,
      description: json['description'] as String? ?? '',
      shortDescription: json['shortDescription'] as String? ?? '',
      poster: json['poster'] == null
          ? null
          : FilmLogo.fromJson(json['poster'] as Map<String, dynamic>),
      movieLength: json['movieLength'] as int? ?? 120,
      ageRating: json['ageRating'] as int? ?? 18,
      budget: json['budget'] == null
          ? null
          : FilmBudget.fromJson(json['budget'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'year': instance.year,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'poster': instance.poster,
      'movieLength': instance.movieLength,
      'ageRating': instance.ageRating,
      'budget': instance.budget,
    };
