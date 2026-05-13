import 'package:http/http.dart';
import 'package:dio/dio.dart';

class RandomArticleService {
  final Dio _dio = Dio();
  Future<Map<String, dynamic>> fetchRandomArticle() async {
    final Dio _dio = Dio();
    final uri = Uri.https(
      'ru.wikipedia.org',
      'api/rest_v1/page/random/summary',
    );
    try {
      final response = await _dio.get(uri.toString());
      return response.data;
    } on DioExpection catch (e) {
      print(e);
      throw e;
    }
  }
}
