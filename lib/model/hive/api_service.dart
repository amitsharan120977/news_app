import 'dart:convert';
import 'package:http/http.dart';
import 'article.dart';
import 'hive_service.dart';

class Services {
  HiveServices hiveservices = HiveServices();
  Future<List<HArticle>> getArticle(String api) async {
    final apiUrl =
        "https://newsapi.org/v2/everything?q=apple&from=2022-02-21&to=2022-02-21&sortBy=popularity&apiKey=$api";

    List<HArticle> newsModel = [];
    try {
      Response resp = await get(Uri.parse(apiUrl));
      if (resp.statusCode == 200) {
        List body = jsonDecode(resp.body)["articles"];
        body.map((e) {
          HArticle article = HArticle.fromJson(e);
          newsModel.add(article);
        }).toList();
        newsModel = hiveservices.addBoxes(newsModel, "Article");
        return newsModel;
      } else {
        newsModel = hiveservices.getBoxes("Article");
        return newsModel;
      }
    } catch (exception) {
      newsModel = hiveservices.getBoxes("Article");
      return newsModel;
    }
  }
}
