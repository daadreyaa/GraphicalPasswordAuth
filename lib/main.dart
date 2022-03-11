import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphical_password_auth/screens/docs_screen.dart';
import 'package:graphical_password_auth/screens/get_started_screen.dart';
import 'package:graphical_password_auth/screens/home_screen.dart';
import 'package:graphical_password_auth/screens/login_screen.dart';
import 'package:graphical_password_auth/screens/check_pattern_page.dart';
import 'package:graphical_password_auth/screens/pattern_page.dart';
import 'package:graphical_password_auth/screens/puzzles_screen.dart';
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
        textTheme: GoogleFonts.epilogueTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: RegisterPage.id,
      routes: {
        RegisterPage.id: (context) => RegisterPage(),
        SelectOption.id: (context) => SelectOption(),
        PatternPage.id: (context) => PatternPage(),
        CheckPatternPage.id: (context) => CheckPatternPage(),
        ShuffledNumbers.id: (context) => ShuffledNumbers(),
        LoginPage.id: (context) => LoginPage(),
        HomePage.id: (context) => HomePage(),
        DocsScreen.id: (context) => DocsScreen(),
        PuzzlesScreen.id: (context) => PuzzlesScreen(),
        GetStarted.id: (context) => GetStarted(),
      },
    );
  }
}
