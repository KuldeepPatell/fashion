import 'package:fashion/modal/btn/rounded_btn.dart';
import 'package:fashion/views/login/loginScreen.dart';
import 'package:fashion/views/otp/OtpVerification.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});
  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final formKey = GlobalKey<FormState>();
  final firstNameText = TextEditingController();
  final lastNameText = TextEditingController();
  final emailText = TextEditingController();
  var passText = TextEditingController();
  var addressText = TextEditingController();
  String state = 'State';
  String country = 'Country';
  List<String> stateList = <String>[
    'State',
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal',
    ''
  ];

  List<String> countryList = <String>['Country', 'India'];

  Widget statecustomdropdown(String input, List<String> list) {
    return DropdownButtonFormField<String>(
      onChanged: (String? newValue) {
        setState(() {
          state = newValue!;
          country = 'India';
        });
      },
      decoration: InputDecoration(
          labelText: 'State',
          labelStyle: TextStyle(
              color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w600),
          hintText: 'State'),
      isExpanded: true,
      menuMaxHeight: 350,
      value: input,
      items: list.map<DropdownMenuItem<String>>(
        (value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text('$value',
                style:
                    TextStyle(color: const Color.fromARGB(255, 126, 123, 123))),
          );
        },
      ).toList(),
    );
  }

  Widget countrydropdown(String input, List<String> list) {
    return DropdownButtonFormField<String>(
      onChanged: (String? newValue) {
        setState(() {
          country = newValue!;
        });
      },
      decoration: InputDecoration(
          labelText: 'Country',
          labelStyle: TextStyle(
              color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w600),
          hintText: 'Country'),
      isExpanded: true,
      menuMaxHeight: 350,
      value: input,
      items: list.map<DropdownMenuItem<String>>(
        (value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value,
                style:
                    TextStyle(color: const Color.fromARGB(255, 126, 123, 123))),
          );
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close_sharp)),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "New Customer",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500),
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: firstNameText,
                  decoration: InputDecoration(
                    hintText: 'First Name',
                    labelText: 'First Name',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  validator: (value) {
                    String pattern = r'^[a-zA-Z\s]*$';
                    RegExp regExp = RegExp(pattern);
                    if (value!.isEmpty) {
                      return 'Name is required';
                    } else if (!regExp.hasMatch(value)) {
                      return 'Please enter valid name';
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                const SizedBox(
                  height: 7,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: lastNameText,
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                    labelText: 'Last Name',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  validator: (value) {
                    String pattern = r'^[a-zA-Z\s]*$';
                    RegExp regExp = RegExp(pattern);
                    if (value!.isEmpty) {
                      return 'Name is required';
                    } else if (!regExp.hasMatch(value)) {
                      return 'Please enter valid name';
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                const SizedBox(height: 7),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailText,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  validator: (value) {
                    String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
                    RegExp regExp = RegExp(pattern);
                    if (value!.isEmpty) {
                      return 'Email is required';
                    } else if (!regExp.hasMatch(value)) {
                      return 'Please enter valid email address';
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                const SizedBox(
                  height: 7,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passText,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password is required';
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                const SizedBox(
                  height: 7,
                ),
                TextFormField(
                  keyboardType: TextInputType.streetAddress,
                  controller: addressText,
                  decoration: InputDecoration(
                    hintText: 'Address',
                    labelText: 'Address',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Address is required';
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: screenWidth * .40,
                        child: statecustomdropdown(state, stateList)),
                    Container(
                      width: screenWidth * .40,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'Postcode',
                          labelText: 'Postcode',
                          labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Postcode is required';
                          }
                          return null;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                countrydropdown(country, countryList),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              height: 50,
              width: double.infinity,
              child: RoundedButton(
                btnName: 'Log in',
                callback: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                OtpVerification(emailText.text.toString())));
                  }
                },
                textStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),

          // Padding(
          //     padding: EdgeInsets.only(left: 15),
          //     child: Container(
          //       width: double.maxFinite,
          //       decoration: BoxDecoration(boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.shade800,
          //           offset: Offset(0.0, 5.0),
          //           blurRadius: 15,
          //           spreadRadius: 1.0,
          //         )
          //       ]),
          //       child: ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //           backgroundColor: const Color.fromARGB(255, 54, 70, 62),
          //           shape: BeveledRectangleBorder(),
          //         ),
          //         onPressed: () {
          //           if (formKey.currentState!.validate()) {
          //             formKey.currentState!.save();

          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) =>
          //                         OtpVerification(emailText.text.toString())));
          //           }
          //         },
          //         child: const Text('Create account',
          //             style: TextStyle(color: Colors.white)),
          //       ),
          //     )),

          SizedBox(
            height: 50,
          ),
          Center(
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Terms of Use and Privacy Policy',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                )),
          )
        ]),
      ),
    ));
  }
}



// import 'package:fashion/modal/btn/rounded_btn.dart';
// import 'package:fashion/views/otp/OtpVerification.dart';
// import 'package:fashion/views/otp/otpScreen.dart';
// import 'package:flutter/material.dart';

// class CreateAccount extends StatefulWidget {
//   @override
//   State<CreateAccount> createState() => _CreateAccountState();
// }

// class _CreateAccountState extends State<CreateAccount> {
//   // final _productSizesList = ['Small', 'Medium', 'Large', 'XLarge'];
//   // String? _selectedVal = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(1),
//         child: Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: 11,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(onPressed: () {}, icon: Icon(Icons.close_sharp)),
//                   Text(
//                     "Log in",
//                     style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 15,
//                         fontWeight: FontWeight.w400),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(12),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "New Customer",
//                       style: TextStyle(
//                           fontSize: 15,
//                           color: Colors.black87,
//                           fontWeight: FontWeight.w700),
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     TextField(
//                         decoration: InputDecoration(
//                       labelText: 'Full Name',
//                     )),
//                     SizedBox(
//                       height: 3,
//                     ),
//                     TextField(
//                         decoration: InputDecoration(
//                       labelText: 'last Name',
//                     )),
//                     SizedBox(
//                       height: 3,
//                     ),
//                     TextField(
//                         decoration: InputDecoration(
//                       labelText: 'Email',
//                     )),
//                     SizedBox(
//                       height: 3,
//                     ),
//                     TextField(
//                         decoration: InputDecoration(
//                       labelText: 'Password',
//                     )),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     TextField(
//                         decoration: InputDecoration(
//                       labelText: 'Address',
//                     )),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     SizedBox(
//                       height: 5,
//                       width: double.infinity,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         DropdownMenu(
//                           // width: MediaQuery.of(context).size.width,
//                           enableFilter: true,
//                           requestFocusOnTap: true,
//                           inputDecorationTheme: const InputDecorationTheme(
//                             filled: false,
//                             contentPadding: EdgeInsets.symmetric(vertical: 5.0),
//                           ),
//                           hintText: 'State',
//                           dropdownMenuEntries: <DropdownMenuEntry<Color>>[
//                             DropdownMenuEntry(
//                                 value: Colors.red, label: 'State1'),
//                             DropdownMenuEntry(
//                                 value: Colors.black, label: 'State2'),
//                             DropdownMenuEntry(
//                                 value: Colors.brown, label: 'State3'),
//                           ],
//                         ),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Container(
//                           width: 100,
//                           child: TextField(
//                               decoration: InputDecoration(
//                             labelText: 'PostCode',
//                           )),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(
//                         right: 10,
//                       ),
//                       child: DropdownMenu(
//                         width: MediaQuery.of(context).size.width,
//                         enableFilter: true,
//                         requestFocusOnTap: true,
//                         inputDecorationTheme: const InputDecorationTheme(
//                           filled: false,

//                           // contentPadding: EdgeInsets.symmetric(vertical: 5.0),
//                         ),
//                         hintText: 'Conutry',
//                         dropdownMenuEntries: <DropdownMenuEntry<Color>>[
//                           DropdownMenuEntry(value: Colors.red, label: '	India'),
//                           DropdownMenuEntry(
//                               value: Colors.black, label: '	China'),
//                           DropdownMenuEntry(
//                               value: Colors.yellow, label: 'Russia'),
//                           DropdownMenuEntry(
//                               value: Colors.green, label: '	Austria'),
//                           DropdownMenuEntry(
//                               value: Colors.pinkAccent, label: 'Sri Lanka'),
//                           DropdownMenuEntry(
//                               value: Colors.brown, label: 'Canada'),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),

//                     // Container(
//                     //   width: double.infinity,
//                     //   child: RoundedButton(
//                     //     btnName: '           Create account           ',
//                     //     callback: () {
//                     //       // print('create new users');

//                     //       Navigator.push(
//                     //           context,
//                     //           MaterialPageRoute(
//                     //             builder: (context) => OTPscreen(),
//                     //           ));
//                     //     },
//                     //     textStyle: TextStyle(color: Colors.white),
//                     //   ),
//                     // ),

//                     // Padding(
//                     //   padding: const EdgeInsets.all(8.0),
//                     //   child: Container(
//                     //     height: 50,
//                     //     width: double.infinity,
//                     //     child: RoundedButton(
//                     //       btnName: '  Create account     ',
//                     //       // bgColor: Colors.white,
//                     //       callback: () {
//                     //         // print('Create account');
//                     //         Navigator.push(
//                     //             context,
//                     //             MaterialPageRoute(
//                     //               builder: (context) => OtpVerification(),
//                     //             ));
//                     //       },
//                     //       textStyle: TextStyle(color: Colors.white),
//                     //     ),
//                     //   ),
//                     // ),

//                     SizedBox(
//                       height: 10,
//                     ),
//                     Center(child: Text("Terms of use and Privacy Policy"))
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
