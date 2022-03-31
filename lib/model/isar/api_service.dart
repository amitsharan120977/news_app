import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';

import '../hive/source.dart';
import 'article.dart';
import 'isar_service.dart';

class Services {
  IsarService isarService = IsarService();

  Future<List<IArticle>> getArticle(Isar isar, String api,
      {String topic = "india"}) async {
    DateTime now = DateTime.now();
    String today = DateFormat("yyyy-MM-dd").format(now);
    final endPointurl =
        "https://newsapi.org/v2/everything?q=$topic&$today&sortBy=publishedAt&apiKey=$api";

    List<IArticle> newsModels = [];
    try {
      Response res = await get(Uri.parse(endPointurl));
      if (res.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(res.body);
        List<dynamic> body = json['articles'];
        body.map((e) {
          final source = Source()
            ..id = e["source"]["id"]
            ..name = e["source"]["name"];
          final article = IArticle()
            ..author = e["author"]
            ..description = e["description"]
            ..title = e["title"]
            ..content = e["content"]
            ..publishedAt = e["publishedAt"]
            ..source = source
            ..url = e["url"]
            ..urlToImage = e["urlToImage"];
          newsModels.add(article);
        }).toList();
        newsModels = await isarService.addSchema(isar, newsModels);
        return newsModels;
      } else {
        newsModels = await isarService.getSchema(isar);
        return newsModels;
      }
    } catch (exception) {
      newsModels = await isarService.getSchema(isar);
      return newsModels;
    }
  }
}
