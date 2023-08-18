import 'package:flutter/material.dart';

/**
 *rong Flutter, CustomScrollView là một tiện ích mạnh mẽ cho phép bạn
 * tạo các danh sách cuộn tùy chỉnh và kết hợp nhiều loại bố cục khác nhau
 * trong một màn hình. CustomScrollView cho phép bạn sử dụng các Sliver để
 * xác định các bố cục khác nhau, bao gồm cả danh sách, lưới, thanh ứng dụng (app bar),
 * và nhiều loại tương tác khác.
 */

/// Dưới đây là một số thành phần chính và cách sử dụng CustomScrollView trong Flutter:

/// @SliverAppBar: Đây là một thành phần app bar mở rộng, bạn có thể đặt nó ở đỉnh của CustomScrollView. Nó có thể mất đi khi cuộn lên hoặc mở rộng để lấp đầy không gian.

/// @SliverList: Đây là một loại sliver cho phép bạn tạo danh sách dọc theo trục chính của CustomScrollView. Bạn có thể sử dụng SliverList để hiển thị danh sách các phần tử.

/// @SliverGrid: Đây là một loại sliver cho phép bạn tạo lưới các phần tử. Bạn có thể thiết lập số cột và xác định cách các phần tử lướt qua.

/// @SliverFixedExtentList: Tương tự như SliverList, nhưng các phần tử có chiều cao cố định. Điều này hữu ích khi bạn biết trước chiều cao của các phần tử.

/// @SliverPadding: Cho phép bạn thêm khoảng cách lề cho bất kỳ sliver nào.

/// @SliverToBoxAdapter: Cho phép bạn chèn một widget bình thường vào trong CustomScrollView.


class MyCustomScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('CustomScrollView Example'),
          expandedHeight: 200,
          flexibleSpace: Image.network(
            'https://example.com/image.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return ListTile(title: Text('Item $index'));
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }
}