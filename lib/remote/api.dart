import 'package:dio/dio.dart';
import 'package:learn_flutter/module/user.dart';
import 'package:retrofit/http.dart';
part 'api.g.dart';

class Apis {
  static const String users = '/users';
}

@RestApi(baseUrl: "https://gorest.co.in/public-api/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;
  @GET(Apis.users)
  Future<ResponseData> getResponseData();
}
