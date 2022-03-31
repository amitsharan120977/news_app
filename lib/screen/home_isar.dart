import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isar/isar.dart';

import '../model/isar/api_service.dart';
import '../model/isar/article.dart';
import 'detail_page_isar.dart';

class HomePageIsar extends StatefulWidget {
  final String apiKey;
  final Isar isar;
  const HomePageIsar({Key? key, required this.isar, required this.apiKey})
      : super(key: key);

  @override
  _HomePageIsarState createState() => _HomePageIsarState();
}

class _HomePageIsarState extends State<HomePageIsar> {
  Services services = Services();
  final topicController = TextEditingController();
  List<IArticle>? articles;
  String searchTopic = "india";
  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  fetchNews() async {
    List<IArticle>? newArticles = await services.getArticle(
        widget.isar, widget.apiKey,
        topic: topicController.text.isEmpty ? "india" : topicController.text);
    setState(() {
      articles = newArticles;
    });
  }

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
                  setState(() {
                    searchTopic = topicController.text.isEmpty
                        ? "india"
                        : topicController.text;
                  });
                  List<IArticle>? newArticles = await services.getArticle(
                      widget.isar, widget.apiKey,
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
        body: RefreshIndicator(
            onRefresh: () async {
              List<IArticle>? newArticles = await services
                  .getArticle(widget.isar, widget.apiKey, topic: searchTopic);
              setState(() {
                articles = newArticles;
              });
            },
            child: articles == null
                ? const CircularProgressIndicator()
                : ListView.builder(
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
                                          article: articles![
                                              articles!.length - 1 - index],
                                        )));
                          },
                          child: Row(
                            children: [
                              CachedNetworkImage(
                                imageUrl: articles![
                                            articles!.length - 1 - index]
                                        .urlToImage ??
                                    "https://dummyimage.com/100x100/ffffff/000800&text=No+Image",
                                placeholder: (context, url) => const Center(
                                    child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                                width: 100,
                                height: 100,
                              ),
                              Text(
                                  articles![articles!.length - 1 - index]
                                      .title!,
                                  style: GoogleFonts.lato(color: Colors.black)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )));
  }
}
