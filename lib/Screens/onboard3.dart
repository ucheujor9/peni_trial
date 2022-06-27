import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Buttons/getstarted.dart';

class onBoard3 extends StatefulWidget {
  const onBoard3({Key? key}) : super(key: key);

  @override
  State<onBoard3> createState() => _onBoard3State();
}

class _onBoard3State extends State<onBoard3> {
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
                width: 150,
                height: 130,
                child: Image(
                    image: AssetImage("assets/images/financial teaching.png")),
              )),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 172, 0),
                child: Container(
                    height: 73,
                    child: Text("GET FINANCIAL ADVICE FROM EXPERTS")),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    height: 75,
                    child: Text("yoyaefyoeruhavhhdvnu")),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(123, 20, 30, 0),
                child: SizedBox(height: 50, child: getStartedButton()),
              )
            ],
          ),
        ],
      ),
    );
  }
}
