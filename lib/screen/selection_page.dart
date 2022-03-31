import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:isar/isar.dart';
import 'package:toggle_switch/toggle_switch.dart';
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
  final magicBox = Hive.box('MagicBox');
  TextEditingController apiKeyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: apiKeyController,
                  decoration: const InputDecoration(
                      labelText: "Api key ",
                      hintText: "Enter your API key here",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 93, 121, 134)))),
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 100),
                    child: Text(
                      "Database",
                    ),
                  ),
                  SizedBox(
                    width: 0.25 * MediaQuery.of(context).size.width,
                    child: ToggleSwitch(
                      initialLabelIndex: 0,
                      totalSwitches: 2,
                      labels: const ['Isar', 'Hive'],
                      onToggle: (index) {
                        if (index == 0) {
                          if (apiKeyController.text.isEmpty) {
                          } else {
                            magicBox.put("apikey", apiKeyController.text);
                            magicBox.put("database", 0);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePageIsar(
                                          isar: widget.isar,
                                          apiKey: apiKeyController.text,
                                        )));
                          }
                        } else {
                          if (apiKeyController.text.isEmpty) {
                          } else {
                            magicBox.put("apikey", apiKeyController.text);
                            magicBox.put("database", 1);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePageHive(
                                          apiKey: apiKeyController.text,
                                        )));
                          }
                        }
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
