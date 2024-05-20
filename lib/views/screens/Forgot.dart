import 'package:fashion/modal/btn/rounded_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Form(
            child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Forgot password?',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text('Enter your email to receive the instruction ')
                        ],
                      ),
                      Row(
                        children: [Text('to reset your password')],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'your email',
                            hintText: 'ENTER YOUR EMAIL'),
                      ),
                      SizedBox(
                        height: 150,
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          child: RoundedButton(
                            btnName: 'Send me now',
                            callback: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Icon(
                                      Icons.lock_reset_sharp,
                                      size: 150,
                                    ),
                                    content: Container(
                                      height: 150.0,
                                      width: 150.0,
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "You'll shortly receive an email with a code to setup a new password.",
                                            style: TextStyle(
                                                fontSize: 21,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          // SizedBox(height: 20),
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      Container(
                                        width: double.infinity,
                                        height: 50,
                                        child: RoundedButton(
                                          btnName: "Enter Code",
                                          textStyle:
                                              TextStyle(color: Colors.white),
                                          callback: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: 40,
                                      )
                                    ],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                  );
                                },
                              );
                            },
                            textStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),

                      // Container(
                      //     color: Colors.black87,
                      //     width: double.infinity,
                      //     child: ElevatedButton(
                      //         style: ElevatedButton.styleFrom(
                      //             backgroundColor: Colors.transparent),
                      //         onPressed: () {
                      //   showDialog(
                      //     context: context,
                      //     builder: (BuildContext context) {
                      //       return AlertDialog(
                      //         title: Icon(
                      //           Icons.lock_reset_sharp,
                      //           size: 150,
                      //         ),
                      //         content: Container(
                      //           height: 150.0,
                      //           width: 150.0,
                      //           child: Column(
                      //             children: <Widget>[
                      //               Text(
                      //                 "You'll shortly receive an email with a code to setup a new password.",
                      //                 style: TextStyle(
                      //                     fontSize: 21,
                      //                     color: Colors.black,
                      //                     fontWeight: FontWeight.w500),
                      //               ),
                      //               // SizedBox(height: 20),
                      //             ],
                      //           ),
                      //         ),
                      //         actions: [
                      //           Container(
                      //             width: double.infinity,
                      //             child: RoundedButton(
                      //               btnName: "Enter Code",
                      //               textStyle:
                      //                   TextStyle(color: Colors.white),
                      //               callback: () {
                      //                 Navigator.of(context).pop();
                      //               },
                      //             ),
                      //           ),
                      //           SizedBox(
                      //             height: 40,
                      //           )
                      //         ],
                      //         shape: RoundedRectangleBorder(
                      //           borderRadius:
                      //               BorderRadius.circular(0.0),
                      //         ),
                      //       );
                      //     },
                      //   );
                      // },
                      //         child: Text(
                      //           "send me now",
                      //           style: TextStyle(color: Colors.white),
                      //         ))),
                    ],
                  ),
                ))));
  }
}
