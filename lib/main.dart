import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Lear Flutter"),
        ),
        body: Center(
          child: MyWidget(),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

/// Stateless *
class MyWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return const Text(
       'truongdc21',
       textAlign: TextAlign.end,
     );
  }
}



