import 'package:wiki_reader/data/services/random_article.dart';
import 'package:wiki_reader/summary.dart';

class RandomArticleRepository {
  final RandomArticleService service = RandomArticleService();
  Future <Summary> getRandomArticle() async {
    final data = service.fetchRandomArticle();
    return Summary.fromJson(await data);
  }
}