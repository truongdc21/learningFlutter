import 'package:flutter/material.dart';
import 'package:learn_flutter/demo_layout.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Learn Flutter"),
        ),
        body: const DemoTwo(),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

//Expanded & Flexible
class MyFlexible extends StatelessWidget {
  const MyFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Container(
              height: 50,
              color: Colors.green,
            )),
        Flexible(
            flex: 2,
            child: Container(
              color: Colors.blue,
            )),
        Flexible(
            flex: 1,
            child: Container(
              color: Colors.deepOrange,
            )),
      ],
    );
  }
}

/// Stack Widgets *
class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      color: Colors.grey,
      child: Stack(
        alignment: Alignment.center,
        //textDirection: TextDirection.ltr,
        fit: StackFit.loose,
        children: [
          Container(
            color: Colors.blue,
            height: 300,
            width: 300,
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Container(
              color: Colors.green,
              height: 200,
              width: 200,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
          ),
          Container(
            color: Colors.yellow,
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }
}

/// Dome used Container, SizeBox, Expanded, Row, Column*
class FormInformation extends StatelessWidget {
  const FormInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          const Row(
            children: [
              SizedBox(
                width: 80,
                child: Text(
                  'username :',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Text(
                'truongdc21',
                style: TextStyle(fontSize: 15, color: Colors.black),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              SizedBox(
                width: 80,
                child: Text(
                  'email :',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Text(
                'dang.chi.truong@sun-asterisk.com',
                style: TextStyle(fontSize: 15, color: Colors.black),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              SizedBox(
                width: 80,
                child: Text(
                  'Address :',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Text(
                'ho.chi.minh/vietnamese',
                style: TextStyle(fontSize: 15, color: Colors.black),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Confirm'),
                  )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.white),
                    child: const Text('Cancel'),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}

class MyExpanded extends StatelessWidget {
  const MyExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
                height: 150,
              )),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                height: 150,
              )),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.orange,
                height: 150,
              )),
        ],
      ),
    );
  }
}

/// Column Widget *
class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, foregroundColor: Colors.white),
            child: const Text(
              'Button 1',
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, foregroundColor: Colors.white),
              child: const Text(
                'Button 2',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, foregroundColor: Colors.white),
            child: const Text(
              'Button 3',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}

/// Row Widgets *
class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, foregroundColor: Colors.white),
              child: const Text(
                'Button1',
                style: TextStyle(fontSize: 20),
              )),
          SizedBox(
            height: 100,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.white),
                child: const Text(
                  'Button2',
                  style: TextStyle(fontSize: 20),
                )),
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, foregroundColor: Colors.white),
              child: const Text(
                'Button3',
                style: TextStyle(fontSize: 20),
              )),
        ],
      ),
    );
  }
}
