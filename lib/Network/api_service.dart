import 'dart:convert';

<<<<<<< HEAD
import 'package:tfriends/Models/login_model.dart';

import 'package:tfriends/Network/network_service.dart';

import '../Models/login_model.dart';

class ApiService extends NetworkService {
  String baseApiUrl = 'https://tugu.drivesung.com/APIV4DEVTEST/';

  String token = 'token';

=======
import 'package:http/http.dart';
import 'package:tfriends/Models/user_info_model.dart';
import 'package:tfriends/Network/network_service.dart';

class ApiService extends NetworkService {
  String baseApiUrl = 'https://tugu.drivesung.com/APIV4DEVTEST/';
  String token = 'token';
>>>>>>> master
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
<<<<<<< HEAD

    var decodeJson = jsonDecode(response);

    return UserInfo.fromJson(decodeJson);
  }
}

// import 'package:tfriends/Models/login_model.dart';
// import 'package:tfriends/Network/network_service.dart';

// class ApiService extends NetworkService {
//   String baseApiUrl = 'https://tugu.drivesung.com/APIV4DEVTEST/';

//   String token = 'token';

//   Map<String, String> header = {
//     'Content-Type': 'application/x-www-form-urlencoded',
//     'Accept': 'application/json',
//   };

//   Future<UserInfo> loginUser(String email, String password) async {
//     Map<String, String> body = <String, String>{
//       "grant_type": "password",
//       "username": email,
//       "password": password,
//       "scope": "regi#62#drivesung#B"
//     };

//     var response = await postResponse(
//         'https://tugu.drivesung.com/APIV4DEVTEST/token',
//         body: body);

//     print(response);
//   }
// }

// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:tfriends/Network/network_service.dart';

// class ApiService extends NetworkService {
//   String baseAPIUrl = 'https://tugu.drivesung.com/APIV4DEVTEST/token';
//   static loginAPICall(String userName, String passWord) async {
//     String api = 'https://tugu.drivesung.com/APIV4DEVTEST/token';
//     Uri apiUri = Uri.parse(api);
//     void loginUser(String userName, String passWord) async {}
//     Map<String, String> _body = <String, String>{
//       "grant_type": "password",
//       "username": userName,
//       "password": passWord,
//       "scope": "regi#62#drivesung#B"
//     };

//     final response = await http.post(Uri.parse(api), body: _body);
//     print(response.body);
//     var anibody = response.body.toString();
//     var decodeobject = jsonDecode(anibody);
//     print(decodeobject['access_token']);

//     if (decodeobject['access_token'] != '') {
//       print('object');
//       return response;
//     }
//     print(response.toString());
//   }
// }
=======
    var decodedJson = jsonDecode(response);
    return UserInfo.fromJson(decodedJson);
  }
}
>>>>>>> master
