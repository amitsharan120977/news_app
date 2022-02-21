import 'package:isar/isar.dart';

import 'article.dart';

class IsarService {
  Future<List<IArticle>> addSchema(Isar isar, List<IArticle> articlesss) async {
    await isar.writeTxn((isar) async {
      await isar.iArticles.putAll(articlesss);
    });

    List<IArticle> allArticles = [];
    await isar.txn((isar) async {
      allArticles = await isar.iArticles.where().findAll();
    });
    return allArticles;
  }

  Future<List<IArticle>> getSchema(Isar isar) async {
    List<IArticle> articless = [];
    await isar.txn((isar) async {
      articless = await isar.iArticles.where().findAll();
    });
    return articless;
  }
}
