import 'package:flutter_demo_1/datas/home_article_data/home_article.dart';

class HomeArticleData {
  HomeArticleData({
    required this.data,
    required this.errorCode,
    required this.errorMsg,
  });

  HomeArticleData.fromJson(Map<String, dynamic> json)
      : data = HomeArticleDataData.fromJson(json['data']),
        errorCode = json['errorCode'],
        errorMsg = json['errorMsg'];

  final HomeArticleDataData data;
  final int errorCode;
  final String errorMsg;
}

class HomeArticleDataData {
  HomeArticleDataData({
    required this.curPage,
    required this.datas,
    required this.offset,
    required this.over,
    required this.pageCount,
    required this.size,
    required this.total,
  });

  HomeArticleDataData.fromJson(Map<String, dynamic> json)
      : curPage = json['curPage'],
        datas = (json['datas'] as List<dynamic>)
            .map((e) => HomeArticle.fromJson(e as Map<String, dynamic>))
            .toList(),
        offset = json['offset'],
        over = json['over'],
        pageCount = json['pageCount'],
        size = json['size'],
        total = json['total'];

  final int curPage;
  final List<HomeArticle> datas;
  final int offset;
  final bool over;
  final int pageCount;
  final int size;
  final int total;
}
