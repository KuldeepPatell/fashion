import 'package:fashion/modal/btn/rounded_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroductionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              // color: Colors.amber,
              color: const Color.fromARGB(255, 241, 228, 228),
              child: Stack(children: [
                Image.asset("assets/images/footwear.jpg"),
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Log in",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Color.fromARGB(255, 235, 222, 208),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Exceptional',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 77, 70, 70),
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Modern Clothings',
                      style: TextStyle(
                          // color: Colors.grey,
                          color: const Color.fromARGB(255, 77, 70, 70),
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '______',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 77, 70, 70),
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 20),
                    // Text('Browser and search your never style from our Permium and designer brands'),
                    Text(
                        'Shop for exceptional modern clothings for your everyday life'),

                    SizedBox(
                      height: 30,
                    ),
                    // RoundedButton(
                    //   btnName: '        Go Shopping           ',
                    //   callback: () {
                    //     print('Go shoping Now');
                    //   },
                    //   textStyle: TextStyle(color: Colors.white),
                    // ),

                    Container(
                      height: 50,
                      width: 200,
                      child: RoundedButton(
                        btnName: 'Go Shopping',
                        callback: () {
                          print('Go shoping Now');
                        },
                        textStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
