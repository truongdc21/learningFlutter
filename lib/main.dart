import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_flutter/service.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Learn Flutter"),
        ),
        body: const Center(
          child: FlutterCallNative(),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class FlutterCallNative extends StatelessWidget {
  const FlutterCallNative({super.key});

  @override
  Widget build(BuildContext context) {
    Service service = Service();
    return FutureBuilder<String>(
      future: service.callMethodNative(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else {
          return Text("Text from Native : ${snapshot.data}");
        }
      },
    );
  }
}

class NativeCallFlutter extends StatefulWidget {
  const NativeCallFlutter({super.key});

  @override
  State<StatefulWidget> createState() => _NativeCallFlutter();
}

class _NativeCallFlutter extends State<NativeCallFlutter> {
  String dataFromNative = 'isEmpty';

  @override
  void initState() {
    super.initState();
    const MethodChannel channel = MethodChannel('chanel_name');
    channel.setMethodCallHandler((call) async {
      if (call.method == 'receiveData') {
        String data = call.arguments['data'];
        setState(() {
          dataFromNative = data;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text('Data send from Native: $dataFromNative');
  }
}
