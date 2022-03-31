import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'article.dart';
import 'hive_service.dart';

class Services {
  HiveServices hiveservices = HiveServices();
  Future<List<HArticle>> getArticle(String api,
      {String topic = "india"}) async {
    DateTime now = DateTime.now();
    String today = DateFormat("yyyy-MM-dd").format(now);
    final apiUrl =
        "https://newsapi.org/v2/everything?q=$topic&from=$today&sortBy=popularity&apiKey=$api";

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
