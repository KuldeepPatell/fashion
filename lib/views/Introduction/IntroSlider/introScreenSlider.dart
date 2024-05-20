import 'package:fashion/views/Introduction/IntroScreen_second.dart';
import 'package:fashion/views/Introduction/Introduction_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroScreenSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = PageController(initialPage: 0);

    return Scaffold(
        body: PageView(
      scrollDirection: Axis.horizontal,
      controller: _controller,
      children: [IntroductionScreen(), IntroScreenSecond()],
    ));
  }
}
