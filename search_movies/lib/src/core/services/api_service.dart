import 'package:dio/dio.dart';
import 'package:search_movies/src/core/consts/consts.dart';
import 'package:search_movies/src/core/consts/urls.dart';

abstract class ApiServiceSource {
  Future<void> init();
  String get baseUrl;
  String get apiToken;
  Future<Response> get(
      {required String path, Map<String, dynamic>? queryParameters});
  Dio get dio;
}

class ApiService implements ApiServiceSource {
  ApiService();

  late String _baseUrl;
  late String _apiToken;
  late Dio _dio;

  @override
  String get baseUrl => _baseUrl;

  @override
  String get apiToken => _apiToken;

  @override
  Dio get dio => _dio;

  @override
  Future<void> init() async {
    _baseUrl = Urls.baseUrl;
    _apiToken = Consts.apiToken;

    final options = BaseOptions(
      baseUrl: _baseUrl,
      headers: <String, dynamic>{'X-API-KEY': _apiToken},
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    );
    _dio = Dio(options);
  }

  @override
  Future<Response> get(
      {required String path, Map<String, dynamic>? queryParameters}) async {
    print('[GET]: $path');
    try {
      print(_dio.options.headers);
      final response = await _dio.get(path, queryParameters: queryParameters);
      return response;
    } on DioError catch (e) {
      print(e);
    }

    return Response(requestOptions: RequestOptions());
  }
}
