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
  final Future<String> getStringFuture = Future<String>.delayed(
    const Duration(seconds: 5), () => 'Data Loading success!'
  );
}

class CounterHome extends StatelessWidget {
  const CounterHome({super.key});

  @override
  Widget build(BuildContext context) {
    final watchCounterProvider = context.watch<CounterProvider>();
    final readCounterProvider = context.read<CounterProvider>();
    return  Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
           FutureBuilder<String>(
             future: watchCounterProvider.getStringFuture,
             builder: (context, snapshot) {
                if(snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else {
                  return Text("Text from provide : ${snapshot.data}");
                }
             },
           )
          ],
        ),
      ),
    );
  }
}