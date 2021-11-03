import 'package:flutter/material.dart';
import 'package:news_app/widget/news_card_widget.dart';
import "package:velocity_x/velocity_x.dart";
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> tabs = [];

  @override
  void initState() {
    super.initState();
    tabs.add(tab("Technology"));
    tabs.add(tab("Business"));
    tabs.add(tab("Entertainment"));
    tabs.add(tab("Sports"));
    tabs.add(tab("Health"));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: NewGradientAppBar(
          gradient: LinearGradient(colors: [Colors.deepPurple, Colors.purple]),
          title: "News App".text.make(),
          elevation: 0,
          bottom: TabBar(
            tabs: tabs,
            isScrollable: true,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.cyanAccent,
          ),
          actions: <Widget>[
            Icon(Icons.search_rounded),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.notifications),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
            children: tabs.map((model) => NewsCardWidget()).toList()),
      ),
    );
  }

  Widget tab(String tabName) {
    return Tab(text: tabName);
  }
}
