import 'package:flutter/material.dart';
import 'icon.dart';
import 'image.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Lear Flutter"),
        ),
        body: const Center(
          child: IconDefault(),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
