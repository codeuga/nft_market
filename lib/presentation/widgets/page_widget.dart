import 'dart:ui';

import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  final Widget child;
  const PageWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F9FC),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            right: -50,
            top: -49,
            child: _bluredCircle(color: 0xff1B4DEA),
          ),
          Positioned(
            left: -66,
            bottom: -72,
            child: _bluredCircle(color: 0xffF86780),
          ),
          SafeArea(child: child)
        ],
      ),
    );
  }

  Container _bluredCircle({required int color}) {
    return Container(
      width: 161,
      height: 161,
      decoration: BoxDecoration(
        color: Color(color).withOpacity(.3),
        borderRadius: BorderRadius.circular(161 / 2),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 170, sigmaY: 170),
        child: Container(),
      ),
    );
  }
}
