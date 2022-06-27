import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Buttons/colored_button.dart';
import '../Check button class/check.dart';
import '../Icon class/icons.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({Key? key}) : super(key: key);

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 104,
          ),
          Center(
              child: Text(
            "Forgot Password",
            style: TextStyle(
                fontSize: 40,
                letterSpacing: -3,
                fontWeight: FontWeight.w500,
                color: Colors.orange),
          )),
          SizedBox(
            height: 62,
          ),
          Center(
              child: Text(
            "Enter E-mail Address",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
          )),
          SizedBox(
            height: 26,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(33, 0, 33, 0),
            child: SizedBox(
              height: 35,
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none,
                      hintText: "Enter email address",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      )),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 11,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CheckBoxe(),
                Text(
                  "Reset password will be sent to this account",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 39,
          ),
          ColoredButton(),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(33, 0, 33, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 90,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                Text("Or"),
                SizedBox(
                    width: 90,
                    child: Divider(
                      color: Colors.grey,
                      thickness: 2,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(33, 0, 33, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  shadowColor: Colors.grey,
                  elevation: 3,
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: 60,
                    width: 75,
                    child: IconButton(
                      icon: const Icon(
                        MyFlutterApp.icons8_google,
                        color: Colors.orange,
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Material(
                  shadowColor: Colors.grey,
                  elevation: 3,
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: 60,
                    width: 75,
                    child: IconButton(
                      icon: const Icon(
                        MyFlutterApp.icons8_facebook,
                        color: Colors.orange,
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Material(
                  shadowColor: Colors.grey,
                  elevation: 3,
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: 60,
                    width: 75,
                    child: IconButton(
                      icon: const Icon(
                        MyFlutterApp.icons8_windows_10,
                        color: Colors.orange,
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
