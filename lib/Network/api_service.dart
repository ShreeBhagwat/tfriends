import 'dart:convert';

import 'package:tfriends/Models/user_info.dart';
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
    var response =
        await postResponse('https://tugu.drivesung.com/APIV4DEVTEST/token',
            headers: <String, String>{
              'Content-Type': 'application/x-www-form-urlencoded',
              'Accept': 'application/json',
            },
            body: body);
    var decodeJson = jsonDecode(response);
    return UserInfo.fromJson(decodeJson);
  }
}
