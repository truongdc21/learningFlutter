import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child:  ChangeNotifierProvider(
        create: (_) => CounterProvider(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: const Text("Lear Flutter - Provider"),
          ),
          body: const CounterHome(),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void add() {
    _counter++;
    notifyListeners();
  }
}
class CounterHome extends StatelessWidget {
  const CounterHome({super.key});

  @override
  Widget build(BuildContext context) {
    final watchCounterProvider = context.watch<CounterProvider>();
    final readCounterProvider = context.read<CounterProvider>();
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
                watchCounterProvider.counter.toString(),
                style: const TextStyle(fontSize: 50),
            ),
            const SizedBox(height: 50,),
            ElevatedButton(
                onPressed: () {
                  readCounterProvider.add();
                },
                child: const Text('Add Counter ++'),
            )
          ],
        ),
      ),
    );
  }

}