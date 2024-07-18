import 'package:flutter_demo_1/datas/home_article_data/home_article_data_datas.dart';
import 'package:logger/logger.dart';

Logger logger = Logger();

class HomeArticleData {
  num? curPage;
  List<HomeArticleDataDatas>? datas;
  num? offset;
  bool? over;
  num? pageCount;
  num? size;
  num? total;

  HomeArticleData(
      {this.curPage,
      this.datas,
      this.offset,
      this.over,
      this.pageCount,
      this.size,
      this.total});

  @override
  String toString() =>
      'Tag(curPage: $curPage, datas: ${datas.toString()}, offset: $offset, over: $over, pageCount: $pageCount, size: $size, total: $total})';

  factory HomeArticleData.fromJson(dynamic json) {
    return HomeArticleData(
      curPage: num.tryParse(json['curPage'].toString()),
      datas: (json['datas'] as List<dynamic>?)
          ?.map((e) => HomeArticleDataDatas.fromJson(e))
          .toList(),
      offset: num.tryParse(json['offset'].toString()),
      over: json['over']?.toString().contains("true"),
      pageCount: num.tryParse(json['pageCount'].toString()),
      size: num.tryParse(json['size'].toString()),
      total: num.tryParse(json['total'].toString()),
    );
  }

  HomeArticleData copyWith({
    num? curPage,
    List<HomeArticleDataDatas>? datas,
    num? offset,
    bool? over,
    num? pageCount,
    num? size,
    num? total,
  }) {
    return HomeArticleData(
      curPage: curPage ?? this.curPage,
      datas: datas ?? this.datas,
      offset: offset ?? this.offset,
      over: over ?? this.over,
      pageCount: pageCount ?? this.pageCount,
      size: size ?? this.size,
      total: total ?? this.total,
    );
  }
}
