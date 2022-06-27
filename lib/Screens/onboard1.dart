import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Buttons/next.dart';

class onBoard1 extends StatefulWidget {
  const onBoard1({Key? key}) : super(key: key);

  @override
  State<onBoard1> createState() => _onBoard1State();
}

class _onBoard1State extends State<onBoard1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              "assets/images/Ellipse 13.png",
              color: Colors.blueAccent,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Center(
                  child: Image(image: AssetImage("assets/images/image 2.png"))),
              SizedBox(
                height: 40,
              ),
              Center(
                  child: Container(
                      width: 170,
                      height: 190,
                      child: Image(
                          image: AssetImage("assets/images/WALLET.png")))),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "BUDGET BETTER",
                    style: TextStyle(
                        letterSpacing: -1,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.purple),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("yoyaefyoeruhavhhdvnu")),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(192, 30, 30, 0),
                child: SizedBox(height: 50, width: 153, child: NextButton()),
              )
            ],
          ),
        ],
      ),
    );
  }
}
