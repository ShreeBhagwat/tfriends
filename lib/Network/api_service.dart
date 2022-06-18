import 'dart:convert';

import 'package:tfriends/Models/user_info.dart';
import 'package:tfriends/Network/network_service.dart';

class ApiService extends NetworkService {
  static const String baseUrl = 'https://tugu.drivesung.com/APIV4DEVTEST/';

  var headrs = <String, String>{
    'Content-Type': 'application/x-www-form-urlencoded',
    'Accept': 'application/json'
  };

  Future<UserInfo> loginUser(String email, String password) async {
    Map<String, String> body = <String, String>{
      "grant_type": "password",
      "username": email,
      "password": password,
      "scope": "regi#62#drivesung#B"
    };

    var response =
        await postResponse('$baseUrl/token', headers: headrs, body: body);
    return UserInfo.fromJson(jsonDecode(response));
  }
}
