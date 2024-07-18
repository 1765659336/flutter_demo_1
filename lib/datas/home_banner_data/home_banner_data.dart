import 'dart:convert';

import 'home_banner_data_datum.dart';

class HomeBannerData {
  List<HomeBannerDataDatum>? data;
  num? errorCode;
  String? errorMsg;

  HomeBannerData({this.data, this.errorCode, this.errorMsg});

  @override
  String toString() {
    return 'HomeBannerData(data: $data, errorCode: $errorCode, errorMsg: $errorMsg)';
  }

  factory HomeBannerData.fromDataDescId30ImagePathHttpsWwwWanandroidComBlogimgs42da12d8De564439B40cEab66c227a4bPngIsVisible1Order2TitleType0UrlHttpsWwwWanandroidComBlogShow3352DescId6ImagePathHttpsWwwWanandroidComBlogimgs62c1bd68B5f34a3cA6497ca8c7dfabe6PngIsVisible1Order1TitleTabType1UrlHttpsWwwWanandroidComNaviDescAppId10ImagePathHttpsWwwWanandroidComBlogimgs50c115c2Cf6c4802Aa7bA4334de444cdPngIsVisible1Order1TitleAppType1UrlHttpsWwwWanandroidComBlogShow2ErrorCode0ErrorMsg(
      Map<String, dynamic> data) {
    return HomeBannerData(
      data: (data['data'] as List<dynamic>?)
          ?.map((e) => HomeBannerDataDatum
              .fromDataDescId30ImagePathHttpsWwwWanandroidComBlogimgs42da12d8De564439B40cEab66c227a4bPngIsVisible1Order2TitleType0UrlHttpsWwwWanandroidComBlogShow3352DescId6ImagePathHttpsWwwWanandroidComBlogimgs62c1bd68B5f34a3cA6497ca8c7dfabe6PngIsVisible1Order1TitleTabType1UrlHttpsWwwWanandroidComNaviDescAppId10ImagePathHttpsWwwWanandroidComBlogimgs50c115c2Cf6c4802Aa7bA4334de444cdPngIsVisible1Order1TitleAppType1UrlHttpsWwwWanandroidComBlogShow2ErrorCode0ErrorMsg(
                  Map<String, dynamic>.from(e)))
          .toList(),
      errorCode: num.tryParse(data['errorCode'].toString()),
      errorMsg: data['errorMsg']?.toString(),
    );
  }

  Map<String, dynamic>
      toDataDescId30ImagePathHttpsWwwWanandroidComBlogimgs42da12d8De564439B40cEab66c227a4bPngIsVisible1Order2TitleType0UrlHttpsWwwWanandroidComBlogShow3352DescId6ImagePathHttpsWwwWanandroidComBlogimgs62c1bd68B5f34a3cA6497ca8c7dfabe6PngIsVisible1Order1TitleTabType1UrlHttpsWwwWanandroidComNaviDescAppId10ImagePathHttpsWwwWanandroidComBlogimgs50c115c2Cf6c4802Aa7bA4334de444cdPngIsVisible1Order1TitleAppType1UrlHttpsWwwWanandroidComBlogShow2ErrorCode0ErrorMsg() {
    return {
      if (data != null)
        'data': data
            ?.map((e) => e
                .toDataDescId30ImagePathHttpsWwwWanandroidComBlogimgs42da12d8De564439B40cEab66c227a4bPngIsVisible1Order2TitleType0UrlHttpsWwwWanandroidComBlogShow3352DescId6ImagePathHttpsWwwWanandroidComBlogimgs62c1bd68B5f34a3cA6497ca8c7dfabe6PngIsVisible1Order1TitleTabType1UrlHttpsWwwWanandroidComNaviDescAppId10ImagePathHttpsWwwWanandroidComBlogimgs50c115c2Cf6c4802Aa7bA4334de444cdPngIsVisible1Order1TitleAppType1UrlHttpsWwwWanandroidComBlogShow2ErrorCode0ErrorMsg())
            .toList(),
      if (errorCode != null) 'errorCode': errorCode,
      if (errorMsg != null) 'errorMsg': errorMsg,
    };
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [HomeBannerData].
  factory HomeBannerData.fromJson(String data) {
    return HomeBannerData
        .fromDataDescId30ImagePathHttpsWwwWanandroidComBlogimgs42da12d8De564439B40cEab66c227a4bPngIsVisible1Order2TitleType0UrlHttpsWwwWanandroidComBlogShow3352DescId6ImagePathHttpsWwwWanandroidComBlogimgs62c1bd68B5f34a3cA6497ca8c7dfabe6PngIsVisible1Order1TitleTabType1UrlHttpsWwwWanandroidComNaviDescAppId10ImagePathHttpsWwwWanandroidComBlogimgs50c115c2Cf6c4802Aa7bA4334de444cdPngIsVisible1Order1TitleAppType1UrlHttpsWwwWanandroidComBlogShow2ErrorCode0ErrorMsg(
            json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [HomeBannerData] to a JSON string.
  String toJson() => json.encode(
      toDataDescId30ImagePathHttpsWwwWanandroidComBlogimgs42da12d8De564439B40cEab66c227a4bPngIsVisible1Order2TitleType0UrlHttpsWwwWanandroidComBlogShow3352DescId6ImagePathHttpsWwwWanandroidComBlogimgs62c1bd68B5f34a3cA6497ca8c7dfabe6PngIsVisible1Order1TitleTabType1UrlHttpsWwwWanandroidComNaviDescAppId10ImagePathHttpsWwwWanandroidComBlogimgs50c115c2Cf6c4802Aa7bA4334de444cdPngIsVisible1Order1TitleAppType1UrlHttpsWwwWanandroidComBlogShow2ErrorCode0ErrorMsg());

  HomeBannerData copyWith({
    List<HomeBannerDataDatum>? data,
    num? errorCode,
    String? errorMsg,
  }) {
    return HomeBannerData(
      data: data ?? this.data,
      errorCode: errorCode ?? this.errorCode,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }
}
