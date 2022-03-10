import 'package:flutter/material.dart';
import 'docs_screen.dart';
import 'get_started_screen.dart';
import 'home_screen.dart';
class PuzzlesScreen extends StatefulWidget {
  const PuzzlesScreen({ Key? key }) : super(key: key);
  static const String id = "puzzles_screen";

  @override
  State<PuzzlesScreen> createState() => _PuzzlesScreenState();
}

class _PuzzlesScreenState extends State<PuzzlesScreen> {
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
                  Navigator.pushNamed(context, PuzzlesScreen.id);
                },
                child: const Text(
                  "Puzzles",
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
                  Navigator.pushNamed(context, GetStarted.id);
                },
                child: const Text(
                  "Get Started",
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
      
    );
  }
}