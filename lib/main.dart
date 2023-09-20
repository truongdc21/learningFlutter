import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Lear Flutter"),
        ),
        body: const Center(
          child: MyScreen(),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mainTest(context);
    return Container();
  }

  void mainTest(BuildContext context){
    getInt2(context);
    getInt1(context);
  }

  Future<int> getInt1(BuildContext context) async {
    showMySnackBar(context, "Get Int 1");
    return 2;
  }

  Future<int> getInt2(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 10));
    showMySnackBar(context, "Get Int 2");
    return 5;
  }
}

void showMySnackBar(BuildContext context, String msg) {
  final snackBar = SnackBar(
    content: Text(msg),
    duration: const Duration(seconds: 1),
    action: SnackBarAction(
      label: 'Close',
      onPressed: () {
        /** Hide SnackBar **/
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      },
    ),
  );
  /** Show SnackBar **/
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

