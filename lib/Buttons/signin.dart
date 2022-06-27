import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Screens/login.dart';

class Sign_inButton extends StatefulWidget {
  const Sign_inButton({Key? key}) : super(key: key);

  @override
  State<Sign_inButton> createState() => _Sign_inButtonState();
}

class _Sign_inButtonState extends State<Sign_inButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => (LoginPage()),
            ));
      },
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Ink(
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.purple, Colors.grey, Colors.orange]),
            borderRadius: BorderRadius.circular(20)),
        child: Container(
          width: 225,
          height: 36,
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Sign In',
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
