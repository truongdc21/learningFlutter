import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

const String urlImg =
    "https://bonjourcoffee.vn/blog/wp-content/uploads/2020/01/cafe-latte.jpg";

class ImageAssets extends StatelessWidget {
  const ImageAssets({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/ice.png");
  }
}

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(urlImg);
  }
}

class ImageCachedNetWork extends StatelessWidget {
  const ImageCachedNetWork({super.key});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: urlImg,
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}

class ResizeImage extends StatelessWidget {
  const ResizeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      urlImg,
      width: 200,
      height: 200,
    );
  }
}

class ResizeImageWithBoxFit extends StatelessWidget {
  const ResizeImageWithBoxFit({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(urlImg, fit: BoxFit.fitHeight);
  }
}