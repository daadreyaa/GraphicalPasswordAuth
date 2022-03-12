import 'dart:ui';

import 'package:flutter/material.dart';

import 'get_started_screen.dart';
import 'home_screen.dart';
import 'puzzles_screen.dart';

class DocsScreen extends StatefulWidget {
  const DocsScreen({Key? key}) : super(key: key);
  static const String id = "docs_screen";

  @override
  State<DocsScreen> createState() => _DocsScreenState();
}

class _DocsScreenState extends State<DocsScreen> {
  List items = [
    "item 1",
    "item 2",
    "item 3",
    "item 4",
    "item 5",
  ];
  List content = [
    "content",
    "content",
    "content",
    "content",
    "content",
    "content",
    "content",
    "content",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: const Color(0xffEBEBEB),
        title: const Text(
          "Graphical Password Auth",
          style: TextStyle(
              color: Color.fromARGB(255, 85, 83, 83),
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HomePage.id);
                },
                child: const Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, DocsScreen.id);
                },
                child: const Text(
                  "Documentation",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, PuzzlesScreen.id);
                },
                child: const Text(
                  "Puzzles",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, GetStarted.id);
                },
                child: const Text(
                  "Console",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
              )
            ],
          ),
        ],
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(items[index]),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: const Color.fromARGB(249, 228, 234, 245),
              child: Padding(
                padding: const EdgeInsets.all(80.0),
                child: Container(
                  color: Colors.white,
                  
                  // child: ListView.builder(
                  //   itemCount: content.length,
                  //   itemBuilder: (BuildContext context, int index) {
                  //     return Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: ListTile(
                  //         title: Text(content[index]),
                  //       ),
                  //     );
                  //   },
                  // ),
                  child: Column(children: const [Text("data")]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
