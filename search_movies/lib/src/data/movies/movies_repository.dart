import 'package:search_movies/src/core/services/api_service.dart';
import 'package:search_movies/src/domain/movies/movie.dart';

abstract class MoviesRepository {
  Future<List<Movie>> getMovies({int? page, String? searchText});
}

class MoviesApi implements MoviesRepository {
  MoviesApi(ApiService apiService) : _apiService = apiService;

  final ApiService _apiService;

  @override
  Future<List<Movie>> getMovies({int? page, String? searchText}) async {
    print('searchText: $searchText');
    final data = {'page': page ?? 1, 'limit': 40, 'name': searchText};
    final response =
        await _apiService.get(path: '/v1.3/movie', queryParameters: data);
    if (response.data != null) {
      final data = response.data['docs'] as List;
      final listMovies = data.map((e) => Movie.fromJson(e)).toList();
      return listMovies;
    }
    return [];
  }
}
