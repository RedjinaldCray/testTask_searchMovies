import 'package:get_it/get_it.dart';
import 'package:search_movies/src/app.dart';
import 'package:search_movies/src/core/services/api_service.dart';
import 'package:search_movies/src/core/utils/extenstions.dart';

void main() async {
  GetIt.I.registerLazySingleton<ApiService>(ApiService.new);
  await get<ApiService>().init();

  await App.run();
}
