import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Điều hướng đến màn hình thứ hai
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Trở lại màn hình trước đó (FirstScreen)
                Navigator.pop(context);
              },
              child: Text('Go back'),
            ),
            ElevatedButton(
              onPressed: () {
                // Trở lại màn hình trước đó (FirstScreen)
                Navigator.pushNamed(context, '/third');
              },
              child: Text('Go to Third Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third Screen')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => FourthScreen())
                );
              },
              child: Text('Go to Fourth Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text('Go back to First Screen'),
            ),
          ],
        ),
      ),
    );
  }
}


class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fourth Screen')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/second'));
              },
              child: Text('Go back to Second Screen '),
            ),
          ],
        ),
      ),
    );
  }
}


