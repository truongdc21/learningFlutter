import 'package:flutter/services.dart';

class Service {
  Future<String> callMethodNative() async {
    try {
      MethodChannel channel = const MethodChannel('chanel_name');
      final String result = await channel.invokeMethod('nativeMethod', {'paramKey': 'paramValue'});
      return result;
    } on PlatformException catch (e) {
      return e.toString();
    }
  }
}
