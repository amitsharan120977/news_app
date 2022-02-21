import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/hive/api_service.dart';
import '../model/hive/article.dart';
import 'detail_hive.dart';

class HomePageHive extends StatefulWidget {
  final String apiKey;
  const HomePageHive({Key? key, required this.apiKey}) : super(key: key);

  @override
  State<HomePageHive> createState() => _HomePageHiveState();
}

class _HomePageHiveState extends State<HomePageHive> {
  Services services = Services();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(411.42857142857144, 876.5714285714286),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => Scaffold(
                body: Center(
              child: FutureBuilder<List<HArticle>>(
                  future: services.getArticle(widget.apiKey),
                  builder: (context, AsyncSnapshot<List<HArticle>> snapshot) {
                    if (snapshot.hasData) {
                      List<HArticle>? articles = snapshot.data;

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
                                    style:
                                        GoogleFonts.lato(color: Colors.black)),
                              ],
                            ),
                          ),
                        )),
                      );
                    }
                    return const CircularProgressIndicator();
                  }),
            )));
  }
}
