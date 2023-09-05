import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/module/user.dart';
import 'package:learn_flutter/remote/api.dart';

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
    _getApi();
    return Container();
  }

  Future<void> _getApi() async {
    final getApi = ApiClient(Dio(BaseOptions(contentType: "application/json")));
    try {
      final list = await getApi.getResponseData();
      final data = list.data;
      data.forEach((element) {
        final user = User.fromJson(element);
        String email = user.email;
        user.id;
      });
    } catch (e) {
      print(e);
    }
  }
}
