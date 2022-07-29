import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphical_password_auth/components/rounded_button.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class SwitchPuzzle extends StatefulWidget {
  const SwitchPuzzle({Key? key}) : super(key: key);

  static const String id = 'switch_puzzle';

  @override
  State<SwitchPuzzle> createState() => _SwitchPuzzleState();
}

class _SwitchPuzzleState extends State<SwitchPuzzle> {
  List<int> indexValue = [0, 0, 0, 0, 0, 0];
  List<Color> colors = [
    Colors.blue,
    Colors.black,
    Colors.red,
    Colors.green,
    Colors.grey,
    Colors.yellow,
  ];

  bool isSubmitted = false;

  late List<int> submittedIndexValue;
  late List<Color> submittedColors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Switch Puzzle", style: TextStyle(color: Colors.grey)),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Pick Colors and select Switch states',
                style: TextStyle(
                  color: Colors.grey.shade900,
                  fontSize: 35.0,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: BlockPicker(
                                    pickerColor: colors[0],
                                    onColorChanged: (color) {
                                      setState(() {
                                        colors[0] = color;
                                      });
                                      Navigator.pop(context);
                                    }),
                              );
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: colors[0],
                          ),
                          height: 20,
                          width: 20,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ToggleSwitch(
                        cornerRadius: 20,
                        animate: true,
                        fontSize: 15,
                        activeBgColor: const [Colors.black, Colors.green, Colors.black],
                        inactiveBgColor: Colors.grey.shade500,
                        inactiveFgColor: Colors.white,
                        minWidth: MediaQuery.of(context).size.width * 0.04,
                        initialLabelIndex: indexValue[0],
                        totalSwitches: 2,
                        labels: const ['OFF', 'ON'],
                        customTextStyles: [
                          GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ],
                        onToggle: (value) {
                          // print('switched to: $index');
                          indexValue[0] = value!;
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: BlockPicker(
                                    pickerColor: colors[1],
                                    onColorChanged: (color) {
                                      setState(() {
                                        colors[1] = color;
                                      });
                                      Navigator.pop(context);
                                    }),
                              );
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: colors[1],
                          ),
                          height: 20,
                          width: 20,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ToggleSwitch(
                        cornerRadius: 20,
                        animate: true,
                        fontSize: 15,
                        activeBgColor: const [Colors.black, Colors.green, Colors.black],
                        inactiveBgColor: Colors.grey.shade500,
                        inactiveFgColor: Colors.white,
                        minWidth: MediaQuery.of(context).size.width * 0.04,
                        initialLabelIndex: indexValue[1],
                        totalSwitches: 2,
                        labels: const ['OFF', 'ON'],
                        customTextStyles: [
                          GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ],
                        onToggle: (value) {
                          // print('switched to: $index');
                          indexValue[1] = value!;
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: BlockPicker(
                                    pickerColor: colors[2],
                                    onColorChanged: (color) {
                                      setState(() {
                                        colors[2] = color;
                                      });
                                      Navigator.pop(context);
                                    }),
                              );
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: colors[2],
                          ),
                          height: 20,
                          width: 20,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ToggleSwitch(
                        cornerRadius: 20,
                        animate: true,
                        fontSize: 15,
                        activeBgColor: const [Colors.black, Colors.green, Colors.black],
                        inactiveBgColor: Colors.grey.shade500,
                        inactiveFgColor: Colors.white,
                        minWidth: MediaQuery.of(context).size.width * 0.04,
                        initialLabelIndex: indexValue[2],
                        totalSwitches: 2,
                        labels: const ['OFF', 'ON'],
                        customTextStyles: [
                          GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ],
                        onToggle: (value) {
                          // print('switched to: $index');
                          indexValue[2] = value!;
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: BlockPicker(
                                    pickerColor: colors[3],
                                    onColorChanged: (color) {
                                      setState(() {
                                        colors[3] = color;
                                      });
                                      Navigator.pop(context);
                                    }),
                              );
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: colors[3],
                          ),
                          height: 20,
                          width: 20,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ToggleSwitch(
                        cornerRadius: 20,
                        animate: true,
                        fontSize: 15,
                        activeBgColor: const [Colors.black, Colors.green, Colors.black],
                        inactiveBgColor: Colors.grey.shade500,
                        inactiveFgColor: Colors.white,
                        minWidth: MediaQuery.of(context).size.width * 0.04,
                        initialLabelIndex: indexValue[3],
                        totalSwitches: 2,
                        labels: const ['OFF', 'ON'],
                        customTextStyles: [
                          GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ],
                        onToggle: (value) {
                          // print('switched to: $index');
                          indexValue[3] = value!;
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: BlockPicker(
                                    pickerColor: colors[4],
                                    onColorChanged: (color) {
                                      setState(() {
                                        colors[4] = color;
                                      });
                                      Navigator.pop(context);
                                    }),
                              );
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: colors[4],
                          ),
                          height: 20,
                          width: 20,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ToggleSwitch(
                        cornerRadius: 20,
                        animate: true,
                        fontSize: 15,
                        activeBgColor: const [Colors.black, Colors.green, Colors.black],
                        inactiveBgColor: Colors.grey.shade500,
                        inactiveFgColor: Colors.white,
                        minWidth: MediaQuery.of(context).size.width * 0.04,
                        initialLabelIndex: indexValue[4],
                        totalSwitches: 2,
                        labels: const ['OFF', 'ON'],
                        customTextStyles: [
                          GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ],
                        onToggle: (value) {
                          // print('switched to: $index');
                          indexValue[4] = value!;
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: BlockPicker(
                                    pickerColor: colors[5],
                                    onColorChanged: (color) {
                                      setState(() {
                                        colors[5] = color;
                                      });
                                      Navigator.pop(context);
                                    }),
                              );
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: colors[5],
                          ),
                          height: 20,
                          width: 20,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ToggleSwitch(
                        cornerRadius: 20,
                        animate: true,
                        fontSize: 15,
                        activeBgColor: const [Colors.black, Colors.green, Colors.black],
                        inactiveBgColor: Colors.grey.shade500,
                        inactiveFgColor: Colors.white,
                        minWidth: MediaQuery.of(context).size.width * 0.04,
                        initialLabelIndex: indexValue[5],
                        totalSwitches: 2,
                        labels: const ['OFF', 'ON'],
                        customTextStyles: [
                          GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ],
                        onToggle: (value) {
                          // print('switched to: $index');
                          indexValue[5] = value!;
                        },
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              RoundedButton(
                  title: 'Submit',
                  color: Colors.greenAccent,
                  onPressed: () {
                    // if (!isSubmitted) {}
                  })
            ],
          ),
        ),
      ),
    );
  }
}


// Widget buildColorPicker() => BlockPicker(pickerColor: color, onColorChanged: onColorChanged)