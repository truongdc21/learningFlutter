import 'package:flutter/material.dart';
import 'package:learn_flutter/single_child_scrollview.dart';

import 'custom_scroll_view.dart';
import 'grid_view.dart';
import 'list_view.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Lear Flutter"),
        ),
        body: MyCustomScrollView(),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
