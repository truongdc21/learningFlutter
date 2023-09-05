import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Learn Flutter"),
        ),
        body: const Center(
          child: HomeScreen(),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    _connectNetWork();
    return Container();
  }
}

Future<void> _connectNetWork() async {
  final client = HttpClient();
  try {
    var url = Uri.parse("https://5f9ab7d89d94640016f711f4.mockapi.io/weather");
    final request = await client.getUrl(url);
    final response = await request.close();

    if (response.statusCode == HttpStatus.ok) {
      final responseBody = await response.transform(utf8.decoder).join();
      final jsonMap = json.decode(responseBody);
      final user = User.fromJson(jsonMap);
      var username = user.username;
      print(username);
    } else {
      print('Status code : ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  } finally {
    client.close();
  }
}

class User {
  final int id;
  final String username;
  final String password;
  final Type type;

  User(
      {required this.id,
      required this.username,
      required this.password,
      required this.type});

  factory User.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    return User(
        id: json['Id'],
        username: json['user'],
        password: json['pwd'],
        type: Type.fromJson(type));
  }
}

class Type {
  final String name;
  final int typeNumber;

  Type({required this.name, required this.typeNumber});

  factory Type.fromJson(Map<String, dynamic> json) {
    return Type(name: json['name'], typeNumber: json['typeNumber']);
  }
}
