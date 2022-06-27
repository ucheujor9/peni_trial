import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:peni/Screens/onboard1.dart';
import 'package:peni/Screens/onboard2.dart';
import 'package:peni/Screens/onboard3.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Board1Page extends StatefulWidget {
  const Board1Page({Key? key}) : super(key: key);

  @override
  State<Board1Page> createState() => _Board1PageState();
}

class _Board1PageState extends State<Board1Page> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [onBoard1(), onBoard2(), onBoard3()],
          ),
          Container(
              alignment: Alignment(-0.9, 0.87),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
              ))
        ],
      ),
    );
  }
}
