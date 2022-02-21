import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isar/isar.dart';

import 'package:url_launcher/url_launcher.dart';

import 'home_hive.dart';
import 'home_isar.dart';

class SelectionPage extends StatefulWidget {
  final Isar isar;
  const SelectionPage(this.isar, {Key? key}) : super(key: key);

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  TextEditingController apiKeyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(411.42857142857144, 876.5714285714286),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => Scaffold(
              appBar: AppBar(
                title: const Text("Selection Page"),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: apiKeyController,
                    decoration: const InputDecoration(
                        hintText: "Enter your API key here",
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Get API key from"),
                      ),
                      TextButton(
                          onPressed: () async {
                            const urL = "https://newsapi.org/";
                            if (await canLaunch(urL)) {
                              await launch(urL);
                            } else {
                              throw "Can't launch $urL";
                            }
                          },
                          child: const Text("https://newsapi.org/")),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage(
                                          isar: widget.isar,
                                          apiKey1: apiKeyController.text,
                                        )));
                          },
                          child: const Text(" Submit for ISAR database")),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePageHive(
                                          apiKey: apiKeyController.text,
                                        )));
                          },
                          child: const Text("Submit for HIVE database"))
                    ],
                  ),
                ],
              ),
            ));
  }
}
