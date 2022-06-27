import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:peni/Screens/verify_page.dart';

class ColoredButton extends StatefulWidget {
  const ColoredButton({Key? key}) : super(key: key);

  @override
  State<ColoredButton> createState() => _ColoredButtonState();
}

class _ColoredButtonState extends State<ColoredButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VerifyPage(),
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
            'Submit',
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
