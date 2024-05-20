import 'dart:async';

import 'package:fashion/modal/btn/rounded_btn.dart';
import 'package:fashion/views/Introduction/IntroSlider/introScreenSlider.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => IntroScreenSlider(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splashScr.jpg'),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Milan',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 250,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Exceptional',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Modern',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Clothings',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              // RoundedButton(
              //   btnName: '       Shop Women           ',
              //   callback: () {
              //     print('Womens shoping Now');
              //   },
              //   textStyle: TextStyle(color: Colors.white),
              // ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: RoundedButton(
                    btnName: 'Shop Women',
                    callback: () {
                      print('Womens shoping Now');
                    },
                    textStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              // RoundedButton(
              //   btnName: '         Shop Men               ',
              //   callback: () {
              //     print('Mens shoping Now');
              //   },
              //   textStyle: TextStyle(color: Colors.white),
              // ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: RoundedButton(
                    btnName: 'Shop Men',
                    callback: () {
                      print('Mens shoping Now');
                    },
                    textStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: InkWell(
                  child: Text(
                    'already have an account? login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
