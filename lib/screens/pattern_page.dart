import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pattern_lock/pattern_lock.dart';

class PatternPage extends StatefulWidget {
  const PatternPage({Key? key}) : super(key: key);

  static const String id = 'pattern_page';

  @override
  State<PatternPage> createState() => _PatternPageState();
}

class _PatternPageState extends State<PatternPage> {
  bool isConfirm = false;
  List<int>? pattern;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Big Pattern",
          style: TextStyle(color: Color.fromARGB(255, 85, 83, 83), fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Flexible(
            child: Text(
              "For super security",
              style: TextStyle(fontSize: 26),
            ),
          ),
          Flexible(
            flex: 2,
            child: PatternLock(
              selectedColor: Colors.purple,
              notSelectedColor: Colors.black26,
              dimension: 7,
              pointRadius: 12,
              fillPoints: true,
              onInputComplete: (List<int> input) {
                if (input.length < 4) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "At least 4 points required",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  );

                  return;
                }

                if (pattern == null) {
                  pattern = input;
                  print(pattern);
                  print(pattern.runtimeType);
                  print(input);
                  print(input.runtimeType);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("pattern is $input"),
                    ),
                  );
                } else {
                  print(input);
                  print(pattern);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("pattern is " + (pattern == input ? "correct" : "wrong")),
                    ),
                  );
                }
                // Navigator.of(context).pop(pattern);
              },
            ),
          ),
        ],
      ),
    );
  }
}
