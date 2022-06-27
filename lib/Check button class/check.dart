import 'package:flutter/material.dart';

class CheckBoxe extends StatefulWidget {
  const CheckBoxe({Key? key}) : super(key: key);

  @override
  State<CheckBoxe> createState() => _CheckBoxeState();
}

class _CheckBoxeState extends State<CheckBoxe> {
  bool isChecked =
      false; // This holds the state of the checkbox, we call setState and update this whenever a user taps the checkbox

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.orange,
      value: isChecked,
      onChanged: (bool? value) {
        // This is where we update the state when the checkbox is tapped
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
