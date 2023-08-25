import 'package:dio/dio.dart';
import 'package:news_day/models/newsmodel.dart';

class getnews {
  final Dio dio = Dio();

  Future<List<newsmodel>> getnewsfunction({required String category}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=468b12d8cf1b4d5d99d89a7230e2fc26');
    Map<String, dynamic> data = response.data;
    List<dynamic> articles = data['articles'];
    List<newsmodel> listnews = [];
    for (var element in articles) {
      listnews.add(newsmodel.fromjason(element));
    }
    return listnews;
  }
}
