import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_app/utils/app_constants.dart';
import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;

  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = const Duration(seconds: 30);
    token = AppConstants.TOKEN;
    _mainHeaders = {
      'Content-type': 'applicaiton/json; charset=UTF-8',
      "Authorization": 'Bearer $token'
    };
  }

  getData(
    String uri,
  ) async {
    var client = http.Client();
    try {
      var response = await client.get(Uri.parse("$baseUrl$uri"));
      // print(response.body);
      return response;
    } catch (e) {
      // return Response(statusCode: 1, statusText: e.toString());
      print(e.toString());
    }
  }
}
