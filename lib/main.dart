import 'package:flutter/material.dart';
import 'package:graphical_password_auth/screens/check_pattern_page.dart';
import 'package:graphical_password_auth/screens/pattern_page.dart';
import 'package:graphical_password_auth/screens/register_screen.dart';
import 'package:graphical_password_auth/screens/select_option.dart';
import 'package:graphical_password_auth/screens/shuffled_numbers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SelectOption.id,
      routes: {
        RegisterScreen.id: (context) => const RegisterScreen(),
        SelectOption.id: (context) => const SelectOption(),
        PatternPage.id: (context) => const PatternPage(),
        CheckPatternPage.id: (context) => const CheckPatternPage(),
        ShuffledNumbers.id: (context) => const ShuffledNumbers(),
      },
    );
  }
}
