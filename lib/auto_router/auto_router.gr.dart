// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'auto_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    FirstRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FirstScreen(),
      );
    },
    SecondRoute.name: (routeData) {
      final args = routeData.argsAs<SecondRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SecondScreen(
          key: args.key,
          isCheck: args.isCheck,
        ),
      );
    },
    ThirdRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ThirdScreen(),
      );
    },
    FourthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FourthScreen(),
      );
    },
  };
}

/// generated route for
/// [FirstScreen]
class FirstRoute extends PageRouteInfo<void> {
  const FirstRoute({List<PageRouteInfo>? children})
      : super(
          FirstRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirstRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SecondScreen]
class SecondRoute extends PageRouteInfo<SecondRouteArgs> {
  SecondRoute({
    Key? key,
    required bool isCheck,
    List<PageRouteInfo>? children,
  }) : super(
          SecondRoute.name,
          args: SecondRouteArgs(
            key: key,
            isCheck: isCheck,
          ),
          initialChildren: children,
        );

  static const String name = 'SecondRoute';

  static const PageInfo<SecondRouteArgs> page = PageInfo<SecondRouteArgs>(name);
}

class SecondRouteArgs {
  const SecondRouteArgs({
    this.key,
    required this.isCheck,
  });

  final Key? key;

  final bool isCheck;

  @override
  String toString() {
    return 'SecondRouteArgs{key: $key, isCheck: $isCheck}';
  }
}

/// generated route for
/// [ThirdScreen]
class ThirdRoute extends PageRouteInfo<void> {
  const ThirdRoute({List<PageRouteInfo>? children})
      : super(
          ThirdRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThirdRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FourthScreen]
class FourthRoute extends PageRouteInfo<void> {
  const FourthRoute({List<PageRouteInfo>? children})
      : super(
          FourthRoute.name,
          initialChildren: children,
        );

  static const String name = 'FourthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
