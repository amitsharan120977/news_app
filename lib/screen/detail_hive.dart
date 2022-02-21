import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/hive/article.dart';

class DetailHive extends StatefulWidget {
  final HArticle article;
  const DetailHive({Key? key, required this.article}) : super(key: key);

  @override
  State<DetailHive> createState() => _DetailHiveState();
}

class _DetailHiveState extends State<DetailHive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          CachedNetworkImage(
            imageUrl: widget.article.urlToImage ??
                "https://dummyimage.com/100x100/ffffff/000800&text=No+Image",
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            width: 400,
            height: 250,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 40,
                  child: Center(
                      child: Text(
                    widget.article.title!.substring(0, 1),
                    style: GoogleFonts.lexendDeca(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 300,
                child: Text(
                  widget.article.description!,
                  style: GoogleFonts.lobster(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
