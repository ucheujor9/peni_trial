import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Screens/new_pass.dart';

class VerifyButton extends StatefulWidget {
  const VerifyButton({Key? key}) : super(key: key);

  @override
  State<VerifyButton> createState() => _VerifyButtonState();
}

class _VerifyButtonState extends State<VerifyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewPass(),
            ));
      },
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Ink(
        decoration: BoxDecoration(
            gradient:
                const LinearGradient(colors: [Colors.purple, Colors.orange]),
            borderRadius: BorderRadius.circular(20)),
        child: Container(
          width: 225,
          height: 36,
          alignment: Alignment.center,
          child: const Text(
            'Verify',
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
