// import 'package:fashion/modal/btn/rounded_btn.dart';
// import 'package:fashion/views/bashboard/bashboard.dart';
// import 'package:fashion/views/login/CreateAccount.dart';
// import 'package:fashion/views/navigation/bottomBar.dart';
// import 'package:fashion/views/screens/Forgot.dart';
// import 'package:flutter/material.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   bool isPassvisible = true;
//   bool lights = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             child: Column(
//               // mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 10,
//                 ),
//                 InkWell(
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                     child: Icon(Icons.close_sharp)),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Text(
//                   'Existing Customer',
//                   style: TextStyle(
//                       fontSize: 23,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w600),
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                       labelText: 'Your email', hintText: 'Enter your email'),
//                   validator: (value) {
//                     RegExp regExp = RegExp('pattern');
//                     if (value!.isEmpty) {
//                       return 'Email is  required';
//                     } else if (!regExp.hasMatch(value)) {
//                       return 'please enter valid user name';
//                     }
//                     return null;
//                   },
//                   autovalidateMode: AutovalidateMode.onUserInteraction,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 TextFormField(
//                   keyboardType: TextInputType.phone,
//                   obscureText: isPassvisible,
//                   decoration: InputDecoration(
//                     labelText: " password",
//                     hintText: "Enter your password",
//                     suffixIcon: IconButton(
//                         icon: Icon(isPassvisible
//                             ? Icons.visibility_off
//                             : Icons.visibility),
//                         onPressed: () {
//                           setState(() {
//                             isPassvisible = !isPassvisible;
//                           });
//                         }),
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'password is required';
//                     }
//                     return null;
//                   },
//                   autovalidateMode: AutovalidateMode.onUserInteraction,
//                 ),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Container(
//                             width: 40,
//                             child: SwitchListTile(
//                               value: lights,
//                               onChanged: (bool value) {
//                                 setState(() {
//                                   lights = value;
//                                 });
//                               },
//                             ),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             'Remember',
//                             style: TextStyle(fontSize: 18, color: Colors.black),
//                           ),
//                         ],
//                       ),
//                       TextButton(
//                         child: Text(
//                           'Forgot password?',
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         ),
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => Forgot(),
//                               ));
//                           print('forgot password?');
//                         },
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     height: 50,
//                     width: double.infinity,
//                     child: RoundedButton(
//                       btnName: 'Log in',
//                       callback: () {
//                         print('Womens shoping Now');
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => BottomBar(),
//                             ));
//                       },
//                       textStyle: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 Center(
//                     child: Text(
//                   'New Customer?',
//                   style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold),
//                 )),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     height: 50,
//                     width: double.infinity,
//                     child: RoundedButton(
//                       btnName: '  Create account     ',
//                       bgColor: Colors.white,
//                       callback: () {
//                         // print('Create account');
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => CreateAccount(),
//                             ));
//                       },
//                       textStyle: TextStyle(color: Colors.black),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:fashion/modal/btn/rounded_btn.dart';
import 'package:fashion/views/bashboard/bashboard.dart';
import 'package:fashion/views/login/CreateAccount.dart';
import 'package:fashion/views/navigation/bottomBar.dart';
import 'package:fashion/views/screens/Forgot.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPassVisible = true;
  bool rememberMe = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? emailError;
  String? passwordError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.close_sharp),
              ),
              SizedBox(height: 30),
              Text(
                'Existing Customer',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextFormField(
                textAlignVertical: TextAlignVertical.bottom,
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Your email',
                  labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  hintText: 'Enter your email',
                  errorText: emailError,
                ),
                onChanged: (_) {
                  setState(() {
                    emailError = null;
                  });
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                textAlignVertical: TextAlignVertical.bottom,
                controller: passwordController,
                obscureText: isPassVisible,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  hintText: "Enter your password",
                  suffixIcon: IconButton(
                    icon: Icon(isPassVisible
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        isPassVisible = !isPassVisible;
                      });
                    },
                  ),
                  errorText: passwordError,
                ),
                onChanged: (_) {
                  setState(() {
                    passwordError = null; // Reset error when user types
                  });
                },
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          child: SwitchListTile(
                            value: rememberMe,
                            onChanged: (bool value) {
                              setState(() {
                                rememberMe = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Remember',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                    TextButton(
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Forgot()),
                        );
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: RoundedButton(
                    btnName: 'Log in',
                    callback: () {
                      _validateForm();
                    },
                    textStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Center(
                child: Text(
                  'New Customer?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: RoundedButton(
                    btnName: '  Create account     ',
                    bgColor: Colors.white,
                    callback: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateAccount()),
                      );
                    },
                    textStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _validateForm() {
    if (emailController.text.isEmpty) {
      setState(() {
        emailError = 'Please enter your email';
      });
    }
    if (passwordController.text.isEmpty) {
      setState(() {
        passwordError = 'Please enter your password';
      });
    }
    if (emailController.text.isNotEmpty &&
        !RegExp(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')
            .hasMatch(emailController.text)) {
      setState(() {
        emailError = 'Please enter a valid email address';
      });
    }
    if (passwordController.text.length < 6) {
      setState(() {
        passwordError = 'Password must be at least 6 characters long';
      });
    }
    if (emailError == null && passwordError == null) {
      // Proceed with login
      print('Womens shopping Now');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BottomBar()),
      );
    }
  }
}




// // import 'package:fashion/modal/btn/rounded_btn.dart';
// // import 'package:fashion/views/otp/otpScreen.dart';
// // import 'package:flutter/material.dart';

// // class LoginScreen extends StatefulWidget {
// //   @override
// //   State<LoginScreen> createState() => _LoginScreenState();
// // }

// // class _LoginScreenState extends State<LoginScreen> {
// //   // final _productSizesList = ['Small', 'Medium', 'Large', 'XLarge'];
// //   // String? _selectedVal = "";

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       // appBar: AppBar(),
// //       body: Padding(
// //         padding: const EdgeInsets.all(1),
// //         child: Container(
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               SizedBox(
// //                 height: 11,
// //               ),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   IconButton(onPressed: () {}, icon: Icon(Icons.close_sharp)),
// //                   Text(
// //                     "Log in",
// //                     style: TextStyle(
// //                         color: Colors.grey,
// //                         fontSize: 15,
// //                         fontWeight: FontWeight.w400),
// //                   ),
// //                 ],
// //               ),
// //               Padding(
// //                 padding: const EdgeInsets.all(12),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text(
// //                       "New Customer",
// //                       style: TextStyle(
// //                           fontSize: 15,
// //                           color: Colors.black87,
// //                           fontWeight: FontWeight.w700),
// //                     ),
// //                     SizedBox(
// //                       height: 8,
// //                     ),
// //                     TextField(
// //                         decoration: InputDecoration(
// //                       labelText: 'Full Name',
// //                     )),
// //                     SizedBox(
// //                       height: 3,
// //                     ),
// //                     TextField(
// //                         decoration: InputDecoration(
// //                       labelText: 'last Name',
// //                     )),
// //                     SizedBox(
// //                       height: 3,
// //                     ),
// //                     TextField(
// //                         decoration: InputDecoration(
// //                       labelText: 'Email',
// //                     )),
// //                     SizedBox(
// //                       height: 3,
// //                     ),
// //                     TextField(
// //                         decoration: InputDecoration(
// //                       labelText: 'Password',
// //                     )),
// //                     SizedBox(
// //                       height: 5,
// //                     ),
// //                     TextField(
// //                         decoration: InputDecoration(
// //                       labelText: 'Address',
// //                     )),
// //                     SizedBox(
// //                       height: 5,
// //                     ),
// //                     SizedBox(
// //                       height: 5,
// //                       width: double.infinity,
// //                     ),
// //                     Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                       children: [
// //                         DropdownMenu(
// //                           // width: MediaQuery.of(context).size.width,
// //                           enableFilter: true,
// //                           requestFocusOnTap: true,
// //                           inputDecorationTheme: const InputDecorationTheme(
// //                             filled: false,
// //                             contentPadding: EdgeInsets.symmetric(vertical: 5.0),
// //                           ),
// //                           hintText: 'State',
// //                           dropdownMenuEntries: <DropdownMenuEntry<Color>>[
// //                             DropdownMenuEntry(
// //                                 value: Colors.red, label: 'State1'),
// //                             DropdownMenuEntry(
// //                                 value: Colors.black, label: 'State2'),
// //                             DropdownMenuEntry(
// //                                 value: Colors.brown, label: 'State3'),
// //                           ],
// //                         ),
// //                         SizedBox(
// //                           width: 20,
// //                         ),
// //                         Container(
// //                           width: 100,
// //                           child: TextField(
// //                               decoration: InputDecoration(
// //                             labelText: 'PostCode',
// //                           )),
// //                         ),
// //                       ],
// //                     ),
// //                     SizedBox(
// //                       height: 5,
// //                     ),
// //                     SizedBox(
// //                       height: 10,
// //                     ),
// //                     Container(
// //                       margin: EdgeInsets.only(
// //                         right: 10,
// //                       ),
// //                       child: DropdownMenu(
// //                         width: MediaQuery.of(context).size.width,
// //                         enableFilter: true,
// //                         requestFocusOnTap: true,
// //                         inputDecorationTheme: const InputDecorationTheme(
// //                           filled: false,

// //                           // contentPadding: EdgeInsets.symmetric(vertical: 5.0),
// //                         ),
// //                         hintText: 'Conutry',
// //                         dropdownMenuEntries: <DropdownMenuEntry<Color>>[
// //                           DropdownMenuEntry(value: Colors.red, label: '	India'),
// //                           DropdownMenuEntry(
// //                               value: Colors.black, label: '	China'),
// //                           DropdownMenuEntry(
// //                               value: Colors.yellow, label: 'Russia'),
// //                           DropdownMenuEntry(
// //                               value: Colors.green, label: '	Austria'),
// //                           DropdownMenuEntry(
// //                               value: Colors.pinkAccent, label: 'Sri Lanka'),
// //                           DropdownMenuEntry(
// //                               value: Colors.brown, label: 'Canada'),
// //                         ],
// //                       ),
// //                     ),
// //                     SizedBox(
// //                       height: 30,
// //                     ),
// //                     Container(
// //                       width: double.infinity,
// //                       child: RoundedButton(
// //                         btnName: '           Create account           ',
// //                         callback: () {
// //                           // print('create new users');

// //                           Navigator.push(
// //                               context,
// //                               MaterialPageRoute(
// //                                 builder: (context) => OTPscreen(),
// //                               ));
// //                         },
// //                         textStyle: TextStyle(color: Colors.white),
// //                       ),
// //                     ),
// //                     SizedBox(
// //                       height: 10,
// //                     ),
// //                     Center(child: Text("Terms of use and Privacy Policy"))
// //                   ],
// //                 ),
// //               )
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
