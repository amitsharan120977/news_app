import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/screen/detail_page_hive.dart';

import '../model/hive/api_service.dart';
import '../model/hive/article.dart';

class HomePageHive extends StatefulWidget {
  final String apiKey;
  const HomePageHive({Key? key, required this.apiKey}) : super(key: key);

  @override
  State<HomePageHive> createState() => _HomePageHiveState();
}

class _HomePageHiveState extends State<HomePageHive> {
  Services services = Services();
  final topicController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  List<HArticle>? articles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
            controller: topicController,
            decoration: const InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 154, 189, 218),
                hintText: "Search news topic here",
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1, color: Color.fromARGB(255, 93, 121, 134)))),
          ),
          actions: [
            IconButton(
                onPressed: () async {
                  List<HArticle>? newArticles = await services.getArticle(
                      widget.apiKey,
                      topic: topicController.text.isEmpty
                          ? "india"
                          : topicController.text);
                  setState(() {
                    articles = newArticles;
                  });
                },
                icon: const Icon(Icons.search))
          ],
        ),
        body: Center(
          child: FutureBuilder<List<HArticle>>(
              future: services.getArticle(widget.apiKey,
                  topic: topicController.text.isEmpty
                      ? "india"
                      : topicController.text),
              builder: (context, AsyncSnapshot<List<HArticle>> snapshot) {
                if (snapshot.hasData) {
                  articles = snapshot.data;
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
                                  builder: (context) => DetailHive(
                                        article: articles![
                                            articles!.length - 1 - index],
                                      )));
                        },
                        child: Row(
                          children: [
                            CachedNetworkImage(
                              imageUrl: articles![articles!.length - 1 - index]
                                      .urlToImage ??
                                  "https://dummyimage.com/100x100/ffffff/000800&text=No+Image",
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              width: 100,
                              height: 100,
                            ),
                            Text(articles![articles!.length - 1 - index].title!,
                                style: GoogleFonts.lato(color: Colors.black)),
                          ],
                        ),
                      ),
                    )),
                  );
                }
                return const CircularProgressIndicator();
              }),
        ));
  }
}
