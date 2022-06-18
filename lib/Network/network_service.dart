import 'dart:io';

import 'package:tfriends/Network/base_api_service.dart';
import 'package:http/http.dart' as http;

class NetworkService extends BaseApiService {

  @override
  Future getResponse(String url) async {
    dynamic responseJson;
    try {
      Uri uri = Uri.parse(url);
      final response = await http.get(uri);
      responseJson = returnResponse(response);
    } on SocketException {
      throw Exception('No Internet Connection');
    } catch (e) {
      throw Exception(e.toString());
    }
    return responseJson;
  }



  @override
  Future postResponse(String url, {Map<String, String>? headers, body}) async {
    dynamic responseJson;
    try {
      Uri uri = Uri.parse(url);
      final response = await http.post(uri, headers: headers, body: body);
      responseJson = returnResponse(response);
    } on SocketException {
      throw Exception('No Internet Connection');
    } catch (e) {
      throw Exception(e.toString());
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Error: ${response.statusCode}');
    }
  }
}
