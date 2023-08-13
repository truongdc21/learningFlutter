import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Lear Flutter"),
        ),
        body: Center(
          child: MyWidget(true),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyWidget extends StatelessWidget {
  final bool isLoading;

  MyWidget(this.isLoading);

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const CircularProgressIndicator();
    } else {
      return const Text(" Stateless");
    }
  }
}

class MyWidget2 extends StatefulWidget {
  final bool isLoading;

  MyWidget2(this.isLoading);

  @override
  State<StatefulWidget> createState() {
    return MyWidget2State();
  }
}

class MyWidget2State extends State<MyWidget2> {
  @override
  Widget build(BuildContext context) {
    return widget.isLoading
        ? const CircularProgressIndicator()
        : const Text("Stateful");
  }
}
