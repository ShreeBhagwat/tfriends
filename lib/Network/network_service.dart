import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:tfriends/Network/base_api_service.dart';

class NetworkService extends BaseApiService {
  @override
  Future getResponse(String url) async {
    dynamic responseJson;
    try {
      Uri apiUri = Uri.parse(url);
      final response = await http.get(apiUri);
      responseJson = returnResponse(response);
    } on SocketException {
      throw Exception('No Internet Connectivity');
    } catch (e) {
      throw Exception(e.toString());
    }
    return responseJson;
  }

  @override
  Future postResponse(String url, {Map<String, String>? header, body}) async {
    dynamic responseJson;
    try {
      Uri apiUri = Uri.parse(url);
      final response = await http.post(apiUri, headers: header, body: body);
      responseJson = returnResponse(response);
    } on SocketException {
      throw Exception('No Internet Connectivity');
    } catch (e) {
      throw Exception(e.toString());
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    if (response.statusCode == 200) {
      return response.body;
    } else {}
  }
}
