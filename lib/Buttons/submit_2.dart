import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:peni/Buttons/success_button.dart';

import '../Icon class/icons.dart';

class SubButton extends StatefulWidget {
  const SubButton({Key? key}) : super(key: key);

  @override
  State<SubButton> createState() => _SubButtonState();
}

class _SubButtonState extends State<SubButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _showDialog(context);
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

void _showDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Color.fromARGB(255, 248, 216, 227),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0)), //this right here
          child: Container(
            // color: Color.fromARGB(255, 245, 221, 229),
            height: 435,
            width: 360,
            // child: Padding(
            //   padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 67,
                ),
                Column(
                  children: [
                    Center(
                      child: Text(
                        "PASSWORD RESET",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Center(
                      child: Text(
                        "SUCCESSFUL",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 42,
                ),
                Icon(
                  MyFlutterApp.icons8_tiktok_verified_account,
                  color: Colors.green,
                  size: 100,
                ),
                SizedBox(
                  height: 48,
                ),
                SuccessButton(),
              ],
            ),
          ),
        );
      });
}

//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
        
//           elevation: 0,
//           title: new Text("Alert!!"),
//           content: new Text("You are awesome!"),
//           backgroundColor: Colors.pinkAccent,
//           actions: <Widget>[
//             new FlatButton(
//               child: new Text("OK"),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           );
//     },
//   );
// }
