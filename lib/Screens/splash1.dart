import 'package:flutter/material.dart';
import 'package:peni/Screens/board1.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => const Board1Page())));
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const login())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 323,
          ),
          Center(child: Image(image: AssetImage("assets/images/image 5.png")))
        ],
      ),
    );
  }
}
