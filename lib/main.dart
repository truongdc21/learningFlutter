import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Learn Flutter - Hooks"),
        ),
        body: const Center(
          child: HomeScreen(),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final count = useState(0);
    final theme = useContext();

    useEffect(() {
      print('Effect ran. Count: ${count.value}');
      return () {
        print('Effect cleaned up. Count: ${count.value}');
      };
    }, [count.value]);

    final increment = useCallback(() {
      count.value++;
    }, [count.value]);
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Count : ${count.value}"),
        const SizedBox(height: 50,),
        ElevatedButton(onPressed: () {
          count.value ++;
        }, child: const Text("Count plus"))
      ],
    );
  }
  
}

class HomeDetailt extends HookConsumerWidget {
  const HomeDetailt({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }

}
