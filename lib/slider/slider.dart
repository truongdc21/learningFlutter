
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySlider1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Slider(
         value: 0.5, // Giá trị ban đầu
         min: 0, // Giá trị tối thiểu
         max: 1, // Giá trị tối đa
         onChanged: (newValue) {
       // Xử lý khi giá trị Slider thay đổi
     });
  }
}
class MySlider2 extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider2> {
  double _sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Slider Value: $_sliderValue',
              style: TextStyle(fontSize: 20),
            ),
            Slider(
              value: _sliderValue,
              min: 0,
              max: 1,
              onChanged: (newValue) {
                setState(() {
                  _sliderValue = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
