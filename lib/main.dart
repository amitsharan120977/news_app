import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx News App',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Homepage(),
    );
  }
}
