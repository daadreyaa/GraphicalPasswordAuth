import 'package:flutter/material.dart';
import 'package:graphical_password_auth/components/rounded_button.dart';
import 'package:graphical_password_auth/screens/check_pattern_page.dart';
import 'package:graphical_password_auth/screens/pattern_page.dart';
import 'package:graphical_password_auth/screens/shuffled_numbers.dart';

class SelectOption extends StatefulWidget {
  const SelectOption({Key? key}) : super(key: key);

  static const String id = 'select_option';

  @override
  State<SelectOption> createState() => _SelectOptionState();
}

class _SelectOptionState extends State<SelectOption> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RoundedButton(
            title: 'Set Pattern',
            color: Colors.lightBlueAccent,
            onPressed: () => Navigator.pushNamed(
              context,
              PatternPage.id,
            ),
          ),
          const SizedBox(height: 40),
          // RoundedButton(
          //   title: 'Check Pattern',
          //   color: Colors.lightBlueAccent,
          //   onPressed: () => Navigator.pushNamed(
          //     context,
          //     CheckPatternPage.id,
          //   ),
          // ),
          // const SizedBox(height: 40),
          RoundedButton(
            title: 'Shuffled Numbers',
            color: Colors.lightBlueAccent,
            onPressed: () => Navigator.pushNamed(
              context,
              ShuffledNumbers.id,
            ),
          ),
        ],
      ),
    );
  }
}
