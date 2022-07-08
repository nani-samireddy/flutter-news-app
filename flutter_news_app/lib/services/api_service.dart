import 'dart:convert';
import 'dart:developer';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

import '../models/news_model.dart';

class APIService {
  Future<NewsModel?> getNews() async {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(now);
    NewsModel newsModel;
    var client = http.Client();
    try {
      var uri = Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=in&apiKey=928c3b08763f4f24b7a47ccad17a8f66');
      var response = await client.get(uri);
      if (response.statusCode == 200) {
        var jsonMap = json.decode(response.body);
        newsModel = NewsModel.fromJson(jsonMap: jsonMap);
        return newsModel;
      } else {
        log(response.statusCode.toString());
        return null;
      }
    } catch (e) {
      log("Got error while calling api " + e.toString());
      return null;
    }
  }
}
