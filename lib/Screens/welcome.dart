import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:peni/Screens/create.dart';

import '../Buttons/signin.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: Image.asset(
                "assets/images/Ellipse 12 (1).png",
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Image.asset(
                "assets/images/Ellipse 13.png",
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 95,
          ),
          const Text(
            "Welcome Back,",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.orange),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "ENIOLA",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                color: Colors.orange),
          ),
          const SizedBox(
            height: 150,
          ),
          Center(child: Sign_inButton()),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Dont have an account",
                style: TextStyle(color: Colors.orange),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 25,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                    // indent: 5,
                    // endIndent: 0,
                    // width: 20,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => (CreatePage()),
                        ));
                  },
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(color: Colors.orange),
                  ))
            ],
          )
        ]),
      )
    ]));
  }
}

final _passwordFocusNode = FocusNode();
