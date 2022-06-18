import 'dart:convert';

import 'package:http/http.dart';
import 'package:tfriends/Models/user_info_model.dart';
import 'package:tfriends/Network/network_service.dart';

class ApiService extends NetworkService {
  String baseApiUrl = 'https://tugu.drivesung.com/APIV4DEVTEST/';
  String token = 'token';
  Map<String, String> header = {
    'Content-Type': 'application/x-www-form-urlencoded',
    'Accept': 'application/json',
  };

  Future<UserInfo> loginUser(String email, String password) async {
    Map<String, String> body = <String, String>{
      "grant_type": "password",
      "username": email,
      "password": password,
      "scope": "regi#62#drivesung#B"
    };

    var response = await postResponse(
        'https://tugu.drivesung.com/APIV4DEVTEST/token',
        body: body);
    var decodedJson = jsonDecode(response);
    return UserInfo.fromJson(decodedJson);
  }
}
