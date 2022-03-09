import 'package:flutter/material.dart';
import 'package:graphical_password_auth/components/rounded_button.dart';

class ShuffledNumbers extends StatefulWidget {
  const ShuffledNumbers({Key? key}) : super(key: key);

  static const String id = 'shuffled_numbers';

  @override
  State<ShuffledNumbers> createState() => _ShuffledNumbersState();
}

class _ShuffledNumbersState extends State<ShuffledNumbers> {
  late List<int> numbers;
  String password = '';
  bool isObscure = false;

  @override
  void initState() {
    numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    numbers.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Container(
          color: Colors.blue,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        child: const Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Entered Password : ' +
                            (isObscure
                                ? password
                                : password.replaceAll(RegExp(r"."), "*")),
                        style: const TextStyle(
                          color: Colors.pink,
                          fontSize: 30.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      childAspectRatio: 1.5,
                    ),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          if (password.length > 20) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  "Max digits is 20",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            );
                          } else {
                            setState(() {
                              password = password + numbers[index].toString();
                            });
                          }
                          ;
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.amber,
                             
                              borderRadius: BorderRadius.circular(15),
                            ),
                            
                            child: Center(child: Text('${numbers[index]}',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),)),
                          ),
                        ),
                      );
                    },
                  ),
                  RoundedButton(
                    title: 'Submit',
                    color: Colors.lightBlueAccent,
                    onPressed: () {
                      if (password.length < 8) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Enter min 8 digits",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        );
                      } else {
                        Navigator.pop(context);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
