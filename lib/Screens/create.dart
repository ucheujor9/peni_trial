import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreatePage extends StatefulWidget {
  CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
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
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 30,
          ),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset('assets/icons/icons8-reply-arrow-48.png')),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Create Account",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Create a new account",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
          ),
          const SizedBox(
            height: 30,
          ),
          Material(
            shadowColor: Colors.orange,
            borderRadius: BorderRadius.circular(10),
            elevation: 10,
            child: const SizedBox(
              height: 37,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 7),
                    border: InputBorder.none,
                    labelText: "Name",
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w700),
                    hintText: "Name",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            shadowColor: Colors.orange,
            borderRadius: BorderRadius.circular(10),
            elevation: 10,
            child: const SizedBox(
              height: 37,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 7),
                    border: InputBorder.none,
                    labelText: "Email",
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w700),
                    hintText: "Email",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            shadowColor: Colors.orange,
            borderRadius: BorderRadius.circular(10),
            elevation: 10,
            child: const SizedBox(
              height: 37,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 7),
                    border: InputBorder.none,
                    labelText: "Phone",
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w700),
                    hintText: "Phone",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            shadowColor: Colors.orange,
            borderRadius: BorderRadius.circular(10),
            elevation: 10,
            child: const SizedBox(
              height: 37,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 7),
                    border: InputBorder.none,
                    labelText: "Password",
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w700),
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            shadowColor: Colors.orange,
            borderRadius: BorderRadius.circular(10),
            elevation: 10,
            child: SizedBox(
              height: 37,
              child: TextFormField(
                focusNode: _passwordFocusNode,
                onSaved: (newValue) {
                  //print value when _formKey.currentState.save() calls.
                  print("Password: $newValue");
                },
                validator: (value) {
                  //validates when _formKey.currentState.validate() calls.
                  if (value!.isEmpty) {
                    return 'Enter your password';
                  }
                  if (value.length < 4) {
                    return 'password must be at least 4 characters';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 7),
                    border: InputBorder.none,
                    labelText: "Confirm Password",
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w700),
                    hintText: "*************",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Center(
              child: SizedBox(
            width: 250,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Sign Up",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
            ),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Already have an account"),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 25,
                  child: VerticalDivider(
                    color: Colors.black87,
                    thickness: 2,
                    // indent: 5,
                    // endIndent: 0,
                    // width: 20,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "SIGN IN",
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
