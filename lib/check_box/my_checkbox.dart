
import 'package:flutter/material.dart';

class MyCheckBox extends StatelessWidget {
  const MyCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: true,
      onChanged: (bool? newValue) {

      },
    );
  }

}

class MyCheckBoxListTitle extends StatelessWidget {
  const MyCheckBoxListTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text('Chọn mục'),
      value: true,
      onChanged: (bool? newValue) {

      },
    );
  }
}

class MyCheckBox2 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyCheckBox2> {
  bool isChecked = false; // Trạng thái ban đầu của checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(
              value: isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  isChecked = newValue ?? false; // Cập nhật trạng thái checkbox
                });
              },
            ),
            SizedBox(height: 20),
            Text('Đã chọn: $isChecked'),
          ],
        ),
      ),
    );
  }
}



class DemoCheckBox extends StatefulWidget {
  @override
  _MyDemoCheckBox createState() => _MyDemoCheckBox();
}

class _MyDemoCheckBox extends State<DemoCheckBox> {
  List<String> selectedItems = []; // Danh sách các checkbox được chọn

  void _handleCheckboxChange(String value, bool isChecked) {
    setState(() {
      if (isChecked) {
        selectedItems.add(value); // Thêm vào danh sách nếu được chọn
      } else {
        selectedItems.remove(value); // Loại bỏ khỏi danh sách nếu bỏ chọn
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox List Example'),
      ),
      body: ListView(
        children: <Widget>[
          for (String item in items)
            CheckboxListTile(
              title: Text(item),
              value: selectedItems.contains(item),
              onChanged: (bool? value) {
                _handleCheckboxChange(item, value ?? false);
              },
            ),
          SizedBox(height: 20),
          Text('Các mục được chọn: ${selectedItems.join(", ")}'),
        ],
      ),
    );
  }
}

List<String> items = ['Mục 1', 'Mục 2', 'Mục 3', 'Mục 4', 'Mục 5'];
