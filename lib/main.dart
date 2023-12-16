import 'package:flutter/material.dart';

void main() {
  runApp(
    // Use MyInherited as native app
    MyInheritedWidget(
      data: 'Hello from InheritedWidget!',
      child: MyApp(),
    ),
  );
}

// App native Widgets
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('InheritedWidget Example'),
        ),
        body: MyTextWidget(),
      ),
    );
  }
}

/// My Inherited *
class MyInheritedWidget extends InheritedWidget {
  final String data;

  MyInheritedWidget({Key? key, required Widget child, required this.data})
      : super(key: key, child: child);

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return oldWidget.data != data;
  }
}


// Widget use MyInheritedWidget
class MyTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Use MyInheritedWidget.of to access shared values
    final inheritedData = MyInheritedWidget.of(context)?.data ?? 'Default Data';
    return Text(inheritedData);
  }
}

