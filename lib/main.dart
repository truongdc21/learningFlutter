import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Lear Flutter"),
        ),
        body: MyWidget(),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

/// Stateless *
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.pink,
      margin: EdgeInsets.all(20), /// Property of @Margin similarity with @Padding *
      child: Padding(
        //padding: EdgeInsets.all(30.0) /// Padding all  *
        //padding: EdgeInsets.fromLTRB(20, 10, 20, 10) /// Padding with direction *
        //padding: EdgeInsets.only(right: 20) /// Padding only on the direction (ex : Right) *
        padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 50.0), /// Padding on Horizontal or vertical *
        child: Text(
          'truongdc21',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
