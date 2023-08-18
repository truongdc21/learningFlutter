import 'package:flutter/material.dart';

import 'navigation_a.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/first',
    routes: {
      '/first': (context) => FirstScreen(),
      '/second': (context) => SecondScreen(),
      '/third': (context) => ThirdScreen(),
      '/fourth': (context) => FourthScreen(),
    },
    home: SafeArea(
      child: Scaffold(
        body: FirstScreen(),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
