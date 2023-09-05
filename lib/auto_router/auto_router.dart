import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:learn_flutter/screens.dart';

part 'auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: FirstRoute.page,
        ),
        AutoRoute(page: SecondRoute.page),
        AutoRoute(page: ThirdRoute.page),
        AutoRoute(page: FourthRoute.page)
      ];
}
