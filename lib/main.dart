import 'package:fashion/views/screens/CheckOut.dart';
import 'package:fashion/views/screens/Payment.dart';
import 'package:fashion/views/screens/SelectedItemScreen.dart';
import 'package:fashion/views/screens/Shipping.dart';
import 'package:fashion/views/splashScreen/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 251, 252, 255)),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
      designSize: Size(360, 740),
    );
  }
}
