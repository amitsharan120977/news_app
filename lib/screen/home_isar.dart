import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isar/isar.dart';

import '../model/isar/api_service_isar.dart';
import '../model/isar/article.dart';
import 'detail_page_isar.dart';

class HomePage extends StatefulWidget {
  final String apiKey1;
  final Isar isar;
  const HomePage({Key? key, required this.isar, required this.apiKey1})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Services services = Services();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          appBarTheme: AppBarTheme(backgroundColor: Colors.yellow.shade800)),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Center(
          child: FutureBuilder<List<IArticle>>(
            future: services.getArticle(widget.isar, widget.apiKey1),
            builder: (context, AsyncSnapshot<List<IArticle>> snapshot) {
              if (snapshot.hasData) {
                List<IArticle>? articles = snapshot.data;

                return ListView.builder(
                  itemCount: articles!.length,
                  itemBuilder: (context, index) => ListTile(
                    title: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailIsar(
                                        article: articles[index],
                                      )));
                        },
                        child: Row(
                          children: [
                            CachedNetworkImage(
                              imageUrl: articles[index].urlToImage ??
                                  "https://dummyimage.com/100x100/ffffff/000800&text=No+Image",
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              width: 100,
                              height: 100,
                            ),
                            Text(articles[index].title!,
                                style: GoogleFonts.lato(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }

              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
