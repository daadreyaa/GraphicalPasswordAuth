import 'package:flutter/material.dart';
import 'package:graphical_password_auth/screens/login_screen.dart';
import 'package:graphical_password_auth/screens/register_screen.dart';

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
      initialRoute:RegisterPage.id,
      routes: {
        RegisterPage.id: (context) => RegisterPage(),
         LoginPage.id: (context) => LoginPage(),
      },
    );
  }
}
