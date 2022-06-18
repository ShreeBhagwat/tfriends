<<<<<<< HEAD
abstract class BaseApiService {
  Future<dynamic> getResponse(String url);
  Future<dynamic> postResponse(String url, {Map<String, String>? header, body});
=======
import 'dart:io';

abstract class BaseApiService {
  Future<dynamic> getResponse(String url);
  Future<dynamic> postResponse(String url, {Map<String, String> headers, body});
>>>>>>> master
}
