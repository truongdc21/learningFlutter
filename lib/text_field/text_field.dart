import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: TextField(
        onChanged: (text) {},
        decoration: const InputDecoration(hintText: 'Please enter name!'),
      ),
    );
  }
}

class MyTextEditingController extends StatelessWidget {
  final TextEditingController _textController = TextEditingController();
  MyTextEditingController({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: TextField(
          controller: _textController,
          onChanged: (text) {
            
          },
          onSubmitted: (text) {},
          decoration: const InputDecoration(
            hintText: 'Nhập văn bản...',
            prefixIcon: Icon(Icons.text_fields)
          ),
        ));
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextEditingController Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Nhập văn bản...',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String value = _controller.text;
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Giá trị nhập liệu'),
                    content: Text(value),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Đóng'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Hiển thị giá trị'),
            ),
          ],
        ),
      ),
    );
  }
}
