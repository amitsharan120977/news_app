import 'package:isar/isar.dart';

import '../hive/source.dart';

part 'article.g.dart';

@Collection()
class IArticle {
  int id = Isar.autoIncrement;
  late Source source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;
}
