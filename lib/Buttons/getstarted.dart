import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Screens/welcome.dart';

class getStartedButton extends StatefulWidget {
  const getStartedButton({Key? key}) : super(key: key);

  @override
  State<getStartedButton> createState() => _getStartedButtonState();
}

class _getStartedButtonState extends State<getStartedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => (WelcomePage()),
            ));
      },
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Ink(
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 19, 2, 59),
              Colors.grey,
              Color.fromARGB(255, 204, 124, 4)
            ]),
            borderRadius: BorderRadius.circular(20)),
        child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Get Started',
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
