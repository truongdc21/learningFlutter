import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/auto_router/auto_router.dart';

@RoutePage()
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            router.push(SecondRoute(isCheck: true));
          },
          child: const Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

@RoutePage()
class SecondScreen extends StatelessWidget {
  final bool isCheck;

  const SecondScreen({super.key, required this.isCheck});

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: Column(
          children: [
            /** Back Button **/
            ElevatedButton(
              onPressed: () {
                router.pop();
              },
              child: const Text('Go back'),
            ),
            /** Next Screen Button **/
            ElevatedButton(
              onPressed: () {
                router.push(const ThirdRoute());
              },
              child: const Text('Go to Third Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

@RoutePage()
class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Third Screen')),
      body: Center(
        child: Column(
          children: [
            /** Back Button */
            ElevatedButton(
              onPressed: () {
                router.pop();
              },
              child: const Text('Go back'),
            ),
            /** Next Screen Button **/
            ElevatedButton(
              onPressed: () {
                router.push(const FourthRoute());
              },
              child: const Text('Go to Fourth Screen'),
            ),
            /** Back screen to index button **/
            ElevatedButton(
              onPressed: () {
                router.popUntilRouteWithName(FirstRoute.name);
              },
              child: const Text('Go back to First Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

@RoutePage()
class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Fourth Screen')),
      body: Center(
        child: Column(
          children: [
            /** Back Screen Button **/
            ElevatedButton(
              onPressed: () {
                router.pop();
              },
              child: const Text('Go back'),
            ),
            /** Back to index screen button **/
            ElevatedButton(
              onPressed: () {
                router.popUntilRouteWithName(SecondRoute.name);
              },
              child: const Text('Go back to Second Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
