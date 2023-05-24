import 'package:freezed_annotation/freezed_annotation.dart';
part 'film_logo.freezed.dart';
part 'film_logo.g.dart';

@freezed
class FilmLogo with _$FilmLogo {
  factory FilmLogo({@Default('') String url, @Default('') String previewUrl}) =
      _FilmLogo;

  const FilmLogo._();

  factory FilmLogo.fromJson(Map<String, dynamic> json) =>
      _$FilmLogoFromJson(json);
}
