import 'package:flutter/material.dart';
import 'package:learn_flutter/radio/radio_button.dart';
import 'package:learn_flutter/slider/slider.dart';
import 'package:learn_flutter/switch/switch.dart';
import 'package:learn_flutter/text_field/text_field.dart';

import 'check_box/my_checkbox.dart';
import 'text_field/demo_login.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Learn Flutter"),
        ),
        body: Center(
          child: MySlider2(),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}


