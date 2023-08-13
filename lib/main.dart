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
          child: MyWidget2(false),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

/// Stateless *
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

/// Stateful *
class MyWidget2 extends StatefulWidget {
  final bool isLoading;

  MyWidget2(this.isLoading);

  @override
  State<StatefulWidget> createState() {
    return MyWidget2State();
  }
}

class MyWidget2State extends State<MyWidget2> {

  late bool _localLoading ;

  /// initSate is function run before function @build
  @override
  void initState() {
    super.initState();
    _localLoading = widget.isLoading;
  }

  @override
  Widget build(BuildContext context) {
    return _localLoading
        ? const CircularProgressIndicator()
        : FloatingActionButton(onPressed: onClickButton);
  }

  void onClickButton() {
    setState(() {
      _localLoading = true ;
    });
  }
}
