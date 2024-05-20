import 'package:fashion/modal/btn/rounded_btn.dart';
import 'package:fashion/views/login/CreateAccount.dart';
import 'package:fashion/views/login/loginScreen.dart';
import 'package:flutter/material.dart';

class IntroScreenSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color.fromARGB(255, 187, 118, 118),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Shop your',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'favorite brands',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                width: double.infinity,
                height: 350,
                // color: Colors.amber,
                child: Image.asset(
                  "assets/images/Introo.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 20),
              child: Text(
                'Browser and search your never style from our Permium and designer brands',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 30,
            ),
            // RoundedButton(
            //   btnName: '        Go Shopping           ',
            //   callback: () {
            //     // print('Go shoping Now');
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => LoginScreen(),
            //         ));
            //   },
            //   textStyle: TextStyle(color: Colors.white),
            // ),

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 50,
                width: double.infinity,
                child: RoundedButton(
                  btnName: 'Go Shopping ',
                  callback: () {
                    print('Womens shoping Now');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                  textStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
