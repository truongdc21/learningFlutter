import 'package:flutter/material.dart';

class DemoOne extends StatelessWidget {
  const DemoOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.blue,
        ),
        Positioned(
          left: 10,
          bottom: 20,
          right: 20,
          child: Card(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'TruongDC',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Learning Flutter 2023 |Learning Flutter 2023 |Learning Flutter 2023 |Learning Flutter 2023 |Learning Flutter 2023 |Learning Flutter 2023 | ',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class DemoTwo extends StatelessWidget {
  const DemoTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 60,
                color: Colors.pink,
              ),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'messaging',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Container(
                width: 20,
                height: 20,
                color: Colors.green,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('12')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
