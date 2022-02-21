import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'model/hive/article.dart';
import 'model/hive/source.dart';
import 'model/isar/article.dart';
import 'model/isar/source.dart';
import 'screen/selection_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(HArticleAdapter());
  Hive.registerAdapter(SourceAdapter());
  await Hive.openBox('SignUp');
  await Hive.openBox<HArticle>('Article');
  final dir = await getApplicationSupportDirectory();
  final isar = await Isar.open(
      schemas: [IArticleSchema, SourceSchema], directory: dir.path);
  runApp(MyApp(isar));
}

class MyApp extends StatelessWidget {
  final Isar isar;
  const MyApp(this.isar, {Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SelectionPage(isar),
    );
  }
}













  
// "https://newsapi.org/v2/everything?q=tesla&from=2022-01-19&sortBy=publishedAt&apiKey=d1707fab19904db0881d1860da4bee50"