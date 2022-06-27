import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Buttons/submit_2.dart';

class NewPass extends StatefulWidget {
  const NewPass({Key? key}) : super(key: key);

  @override
  State<NewPass> createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 97,
          ),
          Text(
            'New Password',
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w300,
                color: Colors.orange),
          ),
          SizedBox(
            height: 86,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(33, 0, 33, 0),
            child: Row(
              children: [
                Text(
                  "Enter new password",
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 10,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 26,
                ),
                SizedBox(
                  width: 155,
                  child: Divider(color: Colors.grey),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(31, 0, 31, 0),
            child: Material(
              shadowColor: Colors.grey,
              elevation: 6,
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none,
                      hintText: "new password",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      )),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 37,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(33, 0, 33, 0),
            child: Row(
              children: [
                Text(
                  "Confirm Password",
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 10,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 26,
                ),
                SizedBox(
                  width: 155,
                  child: Divider(color: Colors.grey),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(31, 0, 31, 0),
            child: Material(
              shadowColor: Colors.grey,
              elevation: 6,
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none,
                      hintText: "new password",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      )),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 54,
          ),
          SubButton()
        ],
      ),
    );
  }
}
