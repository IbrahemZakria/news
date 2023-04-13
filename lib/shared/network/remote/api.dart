import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/models/newsModel.dart';
import 'package:news/shared/components/constant.dart';

import '../../../models/newsResponse.dart';

class apiManger {
  static Future<newsModel> getSourses() async {
    var url =
        Uri.https(baseUrl, 'v2/top-headlines/sources', {'apiKey': ApiKey});
    try {
      var response = await http.get(url);
      var responseBody = response.body;
      var json = jsonDecode(responseBody);

      var sourses = newsModel.fromJson(json);
      return sourses;
    } catch (e) {
      throw (e);
    }
  }
  static Future<newsResponse> GetNews(Sources source) async {
     var url =
        Uri.https(baseUrl, '/v2/everything', {'apiKey': ApiKey,'sources':source.id});
         try {
      var response = await http.get(url);
      var responseBody = response.body;
      var json = jsonDecode(responseBody);

      var sourses = newsResponse.fromJson(json);
      return sourses;
    } catch (e) {
      throw (e);
    }

  }
}
