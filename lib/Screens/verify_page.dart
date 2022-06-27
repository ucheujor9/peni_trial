import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:peni/Check%20button%20class/check.dart';

import '../Buttons/verify_button.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({Key? key}) : super(key: key);

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 127,
          ),
          Center(
            child: Text(
              "Verification",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  letterSpacing: -2.5,
                  color: Colors.orange),
            ),
          ),
          SizedBox(
            height: 62,
          ),
          Text(
            "Enter Verification Code",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          SizedBox(
            height: 21,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(65, 0, 65, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CheckBoxe(),
              Text("I accept the terms and conditions")
            ],
          ),
          SizedBox(
            height: 26,
          ),
          VerifyButton()
        ],
      ),
    );
  }
}
