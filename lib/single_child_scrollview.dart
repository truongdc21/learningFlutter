
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          LogoBox(),
          LogoBox(),
          LogoBox(),
          LogoBox(),
          LogoBox(),
          LogoBox(),
          LogoBox(),
          LogoBox()
        ],
      ),
    );
  }
}

class LogoBox extends StatelessWidget {
  const LogoBox({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(width: 1, color: Colors.black26),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(50),
      child: const FlutterLogo(
        size: 50,
      ),
    );
  }
}