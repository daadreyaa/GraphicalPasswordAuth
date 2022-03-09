import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pattern_lock/pattern_lock.dart';

class CheckPatternPage extends StatefulWidget {
  const CheckPatternPage({Key? key}) : super(key: key);

  static const String id = 'check_pattern_page';

  @override
  State<CheckPatternPage> createState() => _CheckPatternPageState();
}

class _CheckPatternPageState extends State<CheckPatternPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final List<int>? pattern = ModalRoute.of(context)!.settings.arguments as List<int>?;
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text("Check Pattern"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Flexible(
            child: Text(
              "Draw Your pattern",
              style: TextStyle(fontSize: 26),
            ),
          ),
          Flexible(
            child: PatternLock(
              selectedColor: Colors.red,
              pointRadius: 8,
              showInput: true,
              dimension: 3,
              relativePadding: 0.7,
              selectThreshold: 25,
              fillPoints: true,
              onInputComplete: (List<int> input) {
                print(input);
                print(pattern);
                if (listEquals<int>(input, pattern)) {
                  Navigator.pop(context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "wrong",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
//   @override
//   Widget build(BuildContext context) {
//     final List<int>? pattern = ModalRoute.of(context)!.settings.arguments as List<int>?;
//     print(pattern);
//     return Flexible(
//       flex: 2,
//       child: PatternLock(
//         selectedColor: Colors.purple,
//         notSelectedColor: Colors.black26,
//         dimension: 5,
//         pointRadius: 12,
//         fillPoints: true,
//         onInputComplete: (List<int> input) {
//           if (listEquals<int>(input, pattern)) {
//             Navigator.of(context).pop(true);
//           } else {
//             ScaffoldMessenger.of(context).showSnackBar(
//               const SnackBar(
//                 content: Text(
//                   "wrong",
//                   style: TextStyle(color: Colors.red),
//                 ),
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
