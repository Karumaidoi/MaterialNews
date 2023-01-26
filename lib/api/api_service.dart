import 'dart:convert';

import 'package:http/http.dart';

import '../Utils/news_utils.dart';
import '../model/article_model.dart';

class NetworkData {
  Future<List<ArticleModel>> getCurrentNews() async {
    var finalUrl =
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=${Utility.newsId}";

    final response = await get(Uri.parse(finalUrl));

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body)["articles"];
      print(jsonResponse);
      return jsonResponse.map((data) => ArticleModel.fromJson(data)).toList();
    } else {
      throw Exception('Unable to get the data');
    }
  }
}
