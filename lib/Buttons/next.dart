import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NextButton extends StatefulWidget {
  const NextButton({Key? key}) : super(key: key);

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => onBoard2(),
        //     ));
      },
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Ink(
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 69, 2, 95),
              Colors.grey,
              Color.fromARGB(255, 250, 152, 4)
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
                  'Next',
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
