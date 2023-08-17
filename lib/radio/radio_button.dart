import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyRadioButton extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Radio(
      value: true,
      groupValue: null,
      onChanged: (value) {

      },
    );
  }

}

class RadioExample extends StatefulWidget {
  @override
  _RadioExampleState createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  String? selectedOption = 'Option 1';

  void handleRadioValueChange(String? value) {
    setState(() {
      selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Radio(
            value: 'Option 1',
            groupValue: selectedOption,
            onChanged: handleRadioValueChange,
          ),
          Text('Option 1'),
          Radio(
            value: 'Option 2',
            groupValue: selectedOption,
            onChanged: handleRadioValueChange,
          ),
          Text('Option 2'),
          Radio(
            value: 'Option 3',
            groupValue: selectedOption,
            onChanged: handleRadioValueChange,
          ),
          Text('Option 3'),
        ],
      ),
    );
  }
}


class RadioExample2 extends StatefulWidget {
  @override
  _RadioExampleState2 createState() => _RadioExampleState2();
}

class _RadioExampleState2 extends State<RadioExample2> {
  String? selectedOption = 'Option 1';

  void handleRadioValueChange2(String? value) {
    setState(() {
      selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RadioListTile(
            title: Text('Option 1'),
            value: 'Option 1',
            groupValue: selectedOption,
            onChanged: handleRadioValueChange2,
          ),
          RadioListTile(
            title: Text('Option 2'),
            value: 'Option 2',
            groupValue: selectedOption,
            onChanged: handleRadioValueChange2,
          ),
          RadioListTile(
            title: Text('Option 3'),
            value: 'Option 3',
            groupValue: selectedOption,
            onChanged: handleRadioValueChange2,
          ),
        ],
      ),
    );
  }
}