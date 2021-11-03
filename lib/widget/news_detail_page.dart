import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:news_app/utilities/layout_utiities.dart';
// import 'package:flutter_icons/flutter_icons.dart';

class NewsDetail extends StatelessWidget {
  const NewsDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://tse1.mm.bing.net/th?id=OIP.Zr-IiYHYErrduCHFBViQegHaE8&pid=Api",
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            expandedHeight: 250,
          ),
          SliverFillRemaining(
            child: NewsDetailSection(),
          )
        ],
      ),
    );
  }

  Widget NewsDetailSection() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          row1(),
          LayoutUtils.iconText(
            Icon(Icons.timer),
            Text("02 jan 2021"),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "First News",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            child: Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            width: 90,
          ),
          Expanded(
              child: Html(style: {
            "p": Style(color: Colors.grey, fontSize: FontSize.larger)
          }, data: "<p>Test News</p><p>Test News Para</p>"))
        ],
      ),
    );
  }

  Widget row1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Sports",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Row(children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.moon,
              ),
            ),
            IconButton(
              icon: Icon(Icons.bookmark_border),
              onPressed: () {},
            )
          ]),
        )
      ],
    );
  }
}
