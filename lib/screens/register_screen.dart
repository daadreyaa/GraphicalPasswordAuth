import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  static const String id = 'register_screen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome User',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              color: Colors.white60,
              width: MediaQuery.of(context).size.width * 0.5,
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Email',
                  hintText: 'Enter Your Email',
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              color: Colors.white60,
              width: MediaQuery.of(context).size.width * 0.5,
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Email',
                  hintText: 'Enter Your Email',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
