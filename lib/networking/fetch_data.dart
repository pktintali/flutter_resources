import 'dart:convert';
import 'package:dio/dio.dart';

class FetchData {
  static Future getHttp(String url) async {
    try {
      Response response = await Dio().get(url);
      final data = json.decode(response.toString());
      // print(data['data'][1]['name']);
      return data;
    } catch (e) {
      print(e);
    }
  }
}
