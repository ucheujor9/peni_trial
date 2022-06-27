import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Buttons/next2.dart';

class onBoard2 extends StatefulWidget {
  const onBoard2({Key? key}) : super(key: key);

  @override
  State<onBoard2> createState() => _onBoard2State();
}

class _onBoard2State extends State<onBoard2> {
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
                      width: 200,
                      height: 190,
                      child: Image(
                          image: AssetImage("assets/images/notify ill.png")))),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "GET NOTIFICATIONS",
                      style: TextStyle(
                          letterSpacing: -1,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.purple),
                    )),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    height: 75,
                    child: Text("yoyaefyoeruhavhhdvnu")),
              ),
              SizedBox(
                height: 34,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(192, 0, 30, 0),
                child: SizedBox(height: 50, width: 153, child: Next2Button()),
              )
            ],
          ),
        ],
      ),
    );
  }
}
