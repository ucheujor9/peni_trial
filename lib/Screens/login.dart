import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:peni/Screens/create.dart';
import 'package:peni/Screens/forgot.dart';

import '../Icon class/icons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final white = Colors.white;
  final _passwordFocusNode = FocusNode();
  bool hidePassword = true;
  final _formKey = GlobalKey();

  final outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide(color: Colors.white),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(
            //   height: 30,
            // ),
            // IconButton(
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //     icon: const Icon(Icons.arrow_back_ios_new)),
            Form(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 120,
                      ),
                      const Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Material(
                        shadowColor: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                        elevation: 8,
                        child: SizedBox(
                          height: 37,
                          child: TextFormField(
                            autofocus: true, //autofocus enabled.
                            onSaved: (newValue) {
                              //prints value when _formKey.currentState.save();
                              print("Username: $newValue");
                            },
                            validator: (value) //provides value in TextFormField
                                {
                              if (value!.isEmpty) {
                                //TextFormField is empty, show below text
                                return 'Please type your username';
                              }
                              //return null means successful validation.
                              return null;
                            },
                            onFieldSubmitted: (_) {
                              //change Focus to next TextFormField (here password TextFormField)
                              FocusScope.of(context)
                                  .requestFocus(_passwordFocusNode);
                            },
                            //soft keyboard shows next icon in bottom right corner
                            textInputAction: TextInputAction.next,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            maxLines: 1,
                            decoration: const InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 0, 0, 7),
                                border: InputBorder.none,
                                labelText: "Email",
                                labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700),
                                hintText: "ikkypumping@gmail.com",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 53,
                      ),
                      Material(
                        elevation: 8,
                        shadowColor: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          height: 37,
                          child: TextFormField(
                            maxLines: 1,
                            obscureText:
                                hidePassword, //true hides password, false shows.
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
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 7),
                              border: InputBorder.none,
                              labelText: "Password",
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                              hintText: "*************",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    hidePassword = !hidePassword;
                                  });
                                },
                                icon: Icon(
                                  hidePassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.orange,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ForgotPage(),
                                  ));
                            },
                            child: Text(
                              "Forgot password?",
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 12),
                            )),
                      ),
                      SizedBox(height: 20),
                      Center(
                          child: SizedBox(
                        width: 250,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign in",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                        ),
                      )),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(21, 0, 21, 0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(
                                width: 90,
                                child: Divider(
                                  color: Colors.grey,
                                  thickness: 2,
                                )),
                            SizedBox(width: 9),
                            Text("Sign in with"),
                            SizedBox(width: 9),
                            SizedBox(
                                width: 90,
                                child: Divider(
                                  color: Colors.grey,
                                  thickness: 2,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(height: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            shadowColor: Colors.grey,
                            elevation: 3,
                            child: SizedBox(
                              height: 42,
                              width: 55,
                              child: IconButton(
                                icon: const Icon(
                                  MyFlutterApp.icons8_google,
                                  color: Colors.black,
                                  size: 28,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   width: 10,
                          // ),
                          Material(
                            shadowColor: Colors.grey,
                            elevation: 3,
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox(
                              height: 42,
                              width: 55,
                              child: IconButton(
                                icon: const Icon(
                                  MyFlutterApp.icons8_facebook,
                                  color: Colors.black,
                                  size: 28,
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
                              height: 42,
                              width: 55,
                              child: IconButton(
                                icon: const Icon(
                                  MyFlutterApp.icons8_windows_10,
                                  color: Colors.black,
                                  size: 28,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Dont have an account?"),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 29,
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CreatePage(),
                                    ));
                              },
                              child: Text(
                                "SIGN UP",
                                style: TextStyle(color: Colors.orange),
                              ))
                        ],
                      )
                    ]))
          ],
        ),
      ),
    );
  }
}
