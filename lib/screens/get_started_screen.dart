import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:graphical_password_auth/components/rounded_button.dart';
import 'docs_screen.dart';
import 'home_screen.dart';
import 'puzzles_screen.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);
  static const String id = "get_started_screen";
  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  bool passwordVisibility = false;
 List puzzles_selected=[];
  Map<String, bool> values = {
    'foo': true,
    'bar': false,
  };

  TextEditingController domainNameController = TextEditingController();
  var  domain;
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
                      color: Colors.blue,
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 50, 8, 8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Register a new site",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: TextFormField(
              controller: domainNameController,
              decoration: InputDecoration(
                hintText: 'Enter Domain name',
                filled: true,
                fillColor: Colors.blueGrey[50],
                labelStyle: const TextStyle(fontSize: 12),
                contentPadding: const EdgeInsets.only(left: 30),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey.shade50),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey.shade50),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),

          // ListView(
          //   children: values.keys.map((String key) {
          //     return CheckboxListTile(
          //       title: Text(key),
          //       value: values[key],
          //       onChanged: (value) {
          //         setState(() {
          //           values[key] = value!;
          //         });
          //       },
          //
          //   }).toList(),
          // ),
          // CheckboxListTile(
          //       title: Text(values),
          //       value: values[key],
          //       onChanged: (value) {
          //         setState(() {
          //           values[key] = value!;
          //         });
          //       },
          //     );
//             Checkbox(
//   value: values.values.first,
//   onChanged: (value) {
//     setState(() {
//       values.values.first = value;
//     });
//   },
// ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Select Puzzles :',
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.left,
          ),
          Column(
            children: <Widget>[
              // const SizedBox(
              //   height: 30,
              // ),

              CustomCheckBoxGroup(
                unSelectedColor: Theme.of(context).canvasColor,
                buttonLables: const [
                  "Polygonal Puzzle",
                  "Click Puzzle",
                  "Concentric Puzzle",
                  "Padlock",
                  "Shuffled Dial",
                  "Switch Puzzle",
                ],
                buttonValuesList: const [
                  "Polygonal Puzzle",
                  "Click Puzzle",
                  "Concentric Puzzle",
                  "Padlock",
                  "Shuffled Dial",
                  "Switch Puzzle",
                ],
                checkBoxButtonValues: (values) {
                  puzzles_selected = values;
                  // print(values);

                },

                horizontal: false,
                width: 200,
                // hight: 50,
                selectedColor: Theme.of(context).accentColor,
                padding: 4,
                enableShape: true,
              ),
            ],
          ),

          const SizedBox(
            height: 20,
          ),
          RoundedButton(
            title: "Submit",
            color: Colors.blue,
            onPressed: () {
domain = domainNameController.text;
log("Domain name = $domain");
log("Puzzles selected = $puzzles_selected");

            },
          )
        ]),
      ),
    );
  }
}
