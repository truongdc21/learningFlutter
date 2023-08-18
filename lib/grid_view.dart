
import 'package:flutter/cupertino.dart';


class MyGridView extends StatelessWidget {

  final List<String> images = [
    'https://example.com/image1.jpg',
    'https://example.com/image2.jpg',
    'https://example.com/image3.jpg',
    'https://example.com/image4.jpg',
    'https://example.com/image5.jpg',
    'https://example.com/image1.jpg',
    'https://example.com/image2.jpg',
    'https://example.com/image3.jpg',
    'https://example.com/image4.jpg',
    'https://example.com/image5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical, // Hiện thì dọc và ngang
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Số lượng cột trong lưới
        mainAxisSpacing: 10.0, // Khoảng cách giữa các hàng
        crossAxisSpacing: 10.0, // Khoảng cách giữa các cột
      ),
      itemCount: images.length, // Số lượng hình ảnh
      itemBuilder: (BuildContext context, int index) {
        return Image.network(images[index]); // Hiển thị hình ảnh
      },
    );
  }

}