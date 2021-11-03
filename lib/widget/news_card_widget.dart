// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:news_app/utilities/layout_utiities.dart';
import 'package:news_app/widget/news_detail_page.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Card(
      elevation: 0,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(16),
      ),
      child: new InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewsDetail()));
        },
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: [
                new ClipRRect(
                  child: Expanded(
                    child: Image.network(
                        "https://tse1.mm.bing.net/th?id=OIP.Zr-IiYHYErrduCHFBViQegHaE8&pid=Api"),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: new Radius.circular(16),
                    topRight: new Radius.circular(16),
                  ),
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.all(7),
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: "Technology"
                          .text
                          .color(Colors.black)
                          .fontWeight(FontWeight.bold)
                          .minFontSize(5)
                          .make(),
                    ))
              ],
            ),
            new Padding(
              padding: new EdgeInsets.all(16),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  new Text(
                    "First News",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  new SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LayoutUtils.iconText(
                        Icon(Icons.timer),
                        Text(
                          "02 jan 2021",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      new GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.favorite_border,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
