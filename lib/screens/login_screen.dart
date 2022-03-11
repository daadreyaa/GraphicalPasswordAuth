import 'package:flutter/material.dart';
import 'package:graphical_password_auth/screens/register_screen.dart';
import 'package:graphical_password_auth/screens/select_option.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailAddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  bool passwordVisibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5f5f5),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 8),
        children: [
          // MediaQuery.of(context).size.width >= 980
          //     ? Menu()
          //     : SizedBox(), // Responsive
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 360,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sign In to \nMy Application',
                      style: const TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "If you don't have an account",
                      style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          "You can",
                          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 15),
                        GestureDetector(
                          onTap: () {
                            print(MediaQuery.of(context).size.width);
                          },
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, RegisterPage.id);
                            },
                            child: const Text(
                              "Register here!",
                              style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'illustration-2.png',
                      width: 300,
                    ),
                  ],
                ),
              ),

              Image.asset(
                'illustration-1.png',
                width: 300,
              ),
              // MediaQuery.of(context).size.width >= 1300 //Responsive
              //     ? Image.asset(
              //         'images/illustration-1.png',
              //         width: 300,
              //       )
              //     : SizedBox(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height / 6),
                child: Container(
                  width: 320,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailAddressController,
                        decoration: InputDecoration(
                          hintText: 'Enter email address',
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
                      const SizedBox(height: 30),
                      TextFormField(
                        obscureText: !passwordVisibility,
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          counterText: 'Forgot password?',
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => passwordVisibility = !passwordVisibility,
                            ),
                            child: Icon(
                              passwordVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                              color: const Color(0xFF95A1AC),
                              size: 22,
                            ),
                          ),
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
                      const SizedBox(height: 40),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.deepPurple.shade100,
                              spreadRadius: 10,
                              blurRadius: 20,
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          child: Container(width: double.infinity, height: 50, child: const Center(child: const Text("Sign In"))),
                          onPressed: () => Navigator.pushNamed(context, SelectOption.id),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey[300],
                            height: 50,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: const Text("Or continue with"),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey[400],
                            height: 50,
                          ),
                        ),
                      ]),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _loginWithButton(image: 'google.png'),
                          _loginWithButton(image: 'github.png', isActive: true),
                          _loginWithButton(image: 'facebook.png'),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _menuItem(title: 'Home'),
              _menuItem(title: 'About us'),
              _menuItem(title: 'Contact us'),
              _menuItem(title: 'Help'),
            ],
          ),
          Row(
            children: [_menuItem(title: 'Sign In', isActive: true), _registerButton(context)],
          ),
        ],
      ),
    );
  }

  Widget _menuItem({String title = 'Title Menu', isActive = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 75),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Column(
          children: [
            Text(
              '$title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isActive ? Colors.deepPurple : Colors.grey,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            isActive
                ? Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }

  Widget _registerButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 10,
            blurRadius: 12,
          ),
        ],
      ),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, RegisterPage.id);
        },
        child: Text(
          'Register',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}

Widget _loginWithButton({required String image, bool isActive = true}) {
  return Container(
    width: 90,
    height: 70,
    decoration: isActive
        ? BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 10,
                blurRadius: 30,
              )
            ],
            borderRadius: BorderRadius.circular(15),
          )
        : BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.shade400),
          ),
    child: Center(
        child: Container(
      decoration: isActive
          ? BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  spreadRadius: 2,
                  blurRadius: 15,
                )
              ],
            )
          : const BoxDecoration(),
      child: Image.asset(
        '$image',
        width: 35,
      ),
    )),
  );
}
