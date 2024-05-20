import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  RoundedButton({
    required this.btnName,
    this.icon,
    this.bgColor = const Color.fromARGB(255, 77, 70, 70),
    this.textStyle,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child: icon != null
          ? Row(
              children: [
                icon!,
                Text(
                  btnName,
                  style: textStyle,
                ),
              ],
            )
          : Text(
              btnName,
              style: textStyle,
            ),
      style: ElevatedButton.styleFrom(
        backgroundColor: this.bgColor,

        // backgroundColor: Colors.black,
        // color: const Color.fromARGB(255, 77, 70, 70),
        shadowColor: Colors.black,
        elevation: 100,
        // shadowColor: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          side: BorderSide(color: const Color.fromARGB(255, 77, 70, 70)),
        ),
      ),
    );
  }
}
