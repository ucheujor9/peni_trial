import 'package:flutter/material.dart';
import 'package:peni/Screens/splash1.dart';

import 'package:peni/newlog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: MediaQueryData(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: FirstPage(),
        ));
  }
}
