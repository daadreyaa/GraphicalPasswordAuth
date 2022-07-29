import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphical_password_auth/screens/docs_screen.dart';
import 'package:graphical_password_auth/screens/get_started_screen.dart';
import 'package:graphical_password_auth/screens/puzzles_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:blur/blur.dart';
import 'package:pricing_cards/pricing_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_screen";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: const Color(0xffEBEBEB),
        title: const Text(
          "Graphical Password Auth",
          style: TextStyle(color: Color.fromARGB(255, 85, 83, 83), fontWeight: FontWeight.bold),
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
                  style: TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.w500),
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
                  style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
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
                  style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
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
                  style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
              )
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xffF8F9FA),
              width: double.infinity,
              child: Image.asset("secure.jpg"),
              // child: Stack(

              //   children: [
              //     Blur(
              //       blur: 1,
              //       blurColor: Colors.black,
              //       colorOpacity: 0.5,
              //       child: Image.asset(
              //         "secure.jpg",

              //         // width: MediaQuery.of(context).size.width,
              //       ),
              //     ),
              //     Padding(
              //       padding:  EdgeInsets.fromLTRB(8.0,100,8,8),
              //       child:  Center(
              //         child: Text(
              //           "GRAPHICAL PASSWORD AUTHENTICATION",
              //           textAlign: TextAlign.center,
              //           style: GoogleFonts.montserrat(fontSize: 60, fontWeight: FontWeight.bold,color: Colors.white),
              //         ),
              //       ),
              //     )
              //   ],
              // ),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.network("https://assets5.lottiefiles.com/packages/lf20_msdmfngy.json"),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "What is Graphical Password Authentication?",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "A graphical password or graphical user authentication is a form of authentication using images rather than letters, digits, or special characters. The type of images used and the ways in which users interact with them vary between implementations.",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                color: const Color.fromARGB(255, 239, 244, 248),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    const Text(
                      "Use Cases",
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CardWidget(
                          title: "Attack resistent",
                          desc: "",
                        ),
                        CardWidget(
                          title: "No more shoulder surfing",
                          desc: "",
                        ),
                        CardWidget(
                          title: "Easy to remember , Hard to guess",
                          desc: "",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CardWidget(
                          title: "User friendly",
                          desc: "",
                        ),
                        CardWidget(
                          title: "More secure",
                          desc: "",
                        ),
                        CardWidget(
                          title: "More complex to crack",
                          desc: "",
                        ),
                      ],
                    )
                  ],
                )),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  const Text(
                    "Pricing",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  PricingCards(
                    pricingCards: [
                      PricingCard(
                        cardColor: Color.fromARGB(255, 239, 244, 248),
                        priceStyle: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        titleStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        subPriceStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        billedTextStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey),
                        title: 'Monthly',
                        price: '\$ 4.99',
                        subPriceText: '\/mo',
                        billedText: 'Billed monthly',
                        onPress: () {
                          // make your business
                        },
                      ),
                      PricingCard(
                        cardColor: Color.fromARGB(255, 239, 244, 248),
                        priceStyle: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        titleStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        subPriceStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        billedTextStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey),
                        title: 'Yearly',
                        price: '\$ 49.99',
                        subPriceText: '\/mo',
                        billedText: 'Billed anually',
                        onPress: () {
                          // make your business
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.title,
    required this.desc,
  }) : super(key: key);

  final String title, desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.16,
        height: MediaQuery.of(context).size.width * 0.16,
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            desc,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
        ]),
      ),
    );
  }
}
