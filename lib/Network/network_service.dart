import 'dart:io';

<<<<<<< HEAD
import 'package:http/http.dart' as http;
import 'package:tfriends/Network/base_api_service.dart';

class NetworkService extends BaseApiService {
=======
import 'package:tfriends/Network/base_api_service.dart';
import 'package:http/http.dart' as http;

class NetworkService extends BaseApiService {

>>>>>>> master
  @override
  Future getResponse(String url) async {
    dynamic responseJson;
    try {
<<<<<<< HEAD
      Uri apiUri = Uri.parse(url);
      final response = await http.get(apiUri);
      responseJson = returnResponse(response);
    } on SocketException {
      throw Exception('No Internet Connectivity');
=======
      Uri uri = Uri.parse(url);
      final response = await http.get(uri);
      responseJson = returnResponse(response);
    } on SocketException {
      throw Exception('No Internet Connection');
>>>>>>> master
    } catch (e) {
      throw Exception(e.toString());
    }
    return responseJson;
  }

<<<<<<< HEAD
  @override
  Future postResponse(String url, {Map<String, String>? header, body}) async {
    dynamic responseJson;
    try {
      Uri apiUri = Uri.parse(url);
      final response = await http.post(apiUri, headers: header, body: body);
      responseJson = returnResponse(response);
    } on SocketException {
      throw Exception('No Internet Connectivity');
=======


  @override
  Future postResponse(String url, {Map<String, String>? headers, body}) async {
    dynamic responseJson;
    try {
      Uri uri = Uri.parse(url);
      final response = await http.post(uri, headers: headers, body: body);
      responseJson = returnResponse(response);
    } on SocketException {
      throw Exception('No Internet Connection');
>>>>>>> master
    } catch (e) {
      throw Exception(e.toString());
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    if (response.statusCode == 200) {
      return response.body;
<<<<<<< HEAD
    } else {}
=======
    } else {
      throw Exception('Error: ${response.statusCode}');
    }
>>>>>>> master
  }
}
