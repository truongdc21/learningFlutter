import 'package:flutter/material.dart';

class MySwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(value: false, onChanged: null
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Switch(
              value: _isSwitchOn,
              onChanged: (newValue) {
                setState(() {
                  _isSwitchOn = newValue;
                });
              },
            ),
            Text(
              _isSwitchOn ? 'Switch is ON' : 'Switch is OFF',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class MySwitch2 extends StatefulWidget {
  @override
  _MySwitch2State createState() => _MySwitch2State();
}

class _MySwitch2State extends State<MySwitch2> {
  bool _isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Switch(
              value: _isSwitchOn,
              onChanged: (newValue) {
                setState(() {
                  _isSwitchOn = newValue;
                });
              },
            ),
            Text(
              _isSwitchOn ? 'Switch is ON' : 'Switch is OFF',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
