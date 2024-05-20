import 'package:fashion/modal/btn/rounded_btn.dart';
import 'package:fashion/views/screens/Payment.dart';
import 'package:flutter/material.dart';

class Shipping extends StatefulWidget {
  @override
  State<Shipping> createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  final NameText = TextEditingController();
  final emailText = TextEditingController();
  final mobileNumber = TextEditingController();
  final AddressText = TextEditingController();
  String country = 'Country';
  String state = 'State';
  bool isChecked = false;
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

  String? get postalCode => null;
  enabledborder() {
    return UnderlineInputBorder(
        borderSide: BorderSide(width: 2, color: Colors.grey.shade400));
  }

  focusedBorder() {
    return UnderlineInputBorder(
        borderSide: BorderSide(width: 4, color: Colors.grey.shade400));
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Shipping",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
          child: Form(
            child: Column(children: [
              TextFormField(
                keyboardType: TextInputType.name,
                controller: NameText,
                style: TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                  hintText: 'Name',
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: enabledborder(),
                  focusedBorder: focusedBorder(),
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
              SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailText,
                style: TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: enabledborder(),
                  focusedBorder: focusedBorder(),
                ),
                validator: (value) {
                  String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
                  RegExp regExp = RegExp(pattern);
                  if (value!.isEmpty) {
                    return 'Email is required';
                  } else if (!regExp.hasMatch(value)) {
                    return 'Please enter valid Email';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                controller: mobileNumber,
                style: TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                  hintText: 'Phone',
                  labelText: "Phone",
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: enabledborder(),
                  focusedBorder: focusedBorder(),
                ),
                validator: (var value) {
                  // Regular expression to match a 10-digit Indian mobile number
                  String pattern = r'(^(?:[+0]9)?[0-9]{10}$)';
                  RegExp regExp = RegExp(pattern);
                  if (value!.isEmpty) {
                    return 'Mobile number is required';
                  } else if (!regExp.hasMatch(value)) {
                    return 'Please enter valid mobile number';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.streetAddress,
                controller: AddressText,
                style: TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                  hintText: 'Address',
                  labelText: 'Address',
                  enabledBorder: enabledborder(),
                  focusedBorder: focusedBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Address is required';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                  enabledBorder: enabledborder(),
                  focusedBorder: focusedBorder(),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenWidth * .40,
                    child: DropdownButtonFormField<String>(
                      onChanged: (String? newValue) {
                        setState(() {
                          state = newValue!;
                          country = 'India';
                        });
                      },
                      decoration: InputDecoration(
                          // labelText: 'State',
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: 'State'),
                      isExpanded: true,
                      menuMaxHeight: 350,
                      value: state,
                      items: stateList.map<DropdownMenuItem<String>>(
                        (value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text('$value',
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 126, 123, 123))),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                  Container(
                    width: screenWidth * .40,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        // hintText: 'Postcode',
                        labelText: 'Postcode',
                        labelStyle: TextStyle(color: Colors.black),
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
                height: 5,
              ),
              DropdownButtonFormField<String>(
                onChanged: (String? newValue) {
                  setState(() {
                    country = newValue!;
                  });
                },
                decoration: InputDecoration(
                    // labelText: 'Country',
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: 'Country'),
                isExpanded: true,
                menuMaxHeight: 350,
                value: country,
                items: countryList.map<DropdownMenuItem<String>>(
                  (value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,
                          style: TextStyle(
                              color: const Color.fromARGB(255, 126, 123, 123))),
                    );
                  },
                ).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.black,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text("Save for next time")
                ],
              ),
              SizedBox(
                height: 100,
              ),
              // Container(
              //     width: double.infinity,
              //     height: 50,
              //     decoration: BoxDecoration(boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey.shade800,
              //         offset: Offset(0.0, 5.0),
              //         blurRadius: 15,
              //         spreadRadius: 1.0,
              //       )
              //     ]),
              //     child: ElevatedButton(
              //         style: ElevatedButton.styleFrom(
              //           backgroundColor: Color.fromARGB(255, 88, 106, 110),
              //           shape: BeveledRectangleBorder(),
              //         ),
              //         onPressed: () {},
              //         child: Text(
              //           "Continue",
              //           style: TextStyle(color: Colors.white, fontSize: 20),
              //         ))),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: RoundedButton(
                    btnName: 'Continue',
                    callback: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Payment()),
                      );
                    },
                    textStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
