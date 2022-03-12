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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Switch Puzzle"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
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
                    RoundedButton(title: 'Switch 1', color: Colors.blue, onPressed: () {}),
                  ],
                ),
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
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
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
      ),
    );
  }
}


// Widget buildColorPicker() => BlockPicker(pickerColor: color, onColorChanged: onColorChanged)