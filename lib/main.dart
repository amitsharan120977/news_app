import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:isar/isar.dart';
import 'package:news_app/screen/home_hive.dart';
import 'package:news_app/screen/home_isar.dart';
import 'package:path_provider/path_provider.dart';

import 'model/hive/article.dart';
import 'model/hive/source.dart';
import 'model/isar/article.dart';
import 'model/isar/source.dart';
import 'screen/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(HArticleAdapter());
  Hive.registerAdapter(SourceAdapter());
  await Hive.openBox('MagicBox');
  await Hive.openBox<HArticle>('Article');
  final dir = await getApplicationSupportDirectory();
  final isar = await Isar.open(
      schemas: [IArticleSchema, SourceSchema], directory: dir.path);
  runApp(MyApp(isar));
}

class MyApp extends StatelessWidget {
  final Isar isar;
  const MyApp(this.isar, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final magicBox = Hive.box('MagicBox');
    final apiKey = magicBox.get("apikey");
    final database = magicBox.get("database");
    print(database);
    return ScreenUtilInit(
        designSize: const Size(411.42857142857144, 876.5714285714286),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => MaterialApp(
              debugShowCheckedModeBanner: true,
              title: 'News App',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: apiKey == null
                  ? SignUpPage(isar)
                  : database == 0
                      ? HomePageIsar(isar: isar, apiKey: apiKey)
                      : HomePageHive(apiKey: apiKey),
            ));
  }
}













  
// "https://newsapi.org/v2/everything?q=tesla&from=2022-01-19&sortBy=publishedAt&apiKey=d1707fab19904db0881d1860da4bee50"