import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/auto_router/auto_router.dart';
import 'screens.dart';

void main() {
  final appRouter = AppRouter();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp.router(
    routerConfig: appRouter.config(),
  ));
}
