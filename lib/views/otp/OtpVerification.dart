import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class OtpVerification extends StatefulWidget {
  var emailText;
  OtpVerification(this.emailText);

  @override
  State<OtpVerification> createState() => _OtpverificationState(emailText);
}

class _OtpverificationState extends State<OtpVerification> {
  roundSizedBox() {
    return SizedBox(
      height: 45,
      width: 45,
      child: TextFormField(
        onSaved: (pin) {},
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: InputDecoration(
          hintText: '0',
          hintStyle: TextStyle(fontSize: 25),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(45),
              borderSide: BorderSide(width: 1, color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(45),
              borderSide: BorderSide(width: 1, color: Colors.grey)),
        ),
        style: Theme.of(context).textTheme.headlineMedium,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }

  final otp = TextEditingController();
  var emailText;
  _OtpverificationState(this.emailText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Form(
          child: Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Enter the code\nto verify your account',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'We have sent you an email with a code to\n$emailText',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      roundSizedBox(),
                      roundSizedBox(),
                      roundSizedBox(),
                      roundSizedBox(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                // TextButton(
                //     onPressed: () {},
                //     child: Text(
                //       'Send me a new code',
                //       style: TextStyle(
                //           color: Colors.grey, fontWeight: FontWeight.w600),
                //     ))
                InkWell(
                    onTap: () {},
                    child: Text(
                      'Send me a new code',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                    ))
              ],
            ),
          ),
        ));
  }
}
