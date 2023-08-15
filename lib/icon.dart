import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

const String urlImg =
    "https://bonjourcoffee.vn/blog/wp-content/uploads/2020/01/cafe-latte.jpg";

class IconDefault extends StatelessWidget {
  const IconDefault({super.key});

  /// Icon(Icons.star)
  /// Icon(Icons.favorite)
  /// Icon(Icons.home) ...
  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.access_alarm);
  }
}

