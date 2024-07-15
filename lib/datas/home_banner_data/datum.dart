import 'dart:convert';

class HomeBannerDataDatum {
  String? desc;
  num? id;
  String? imagePath;
  num? isVisible;
  num? order;
  String? title;
  num? type;
  String? url;

  HomeBannerDataDatum({
    this.desc,
    this.id,
    this.imagePath,
    this.isVisible,
    this.order,
    this.title,
    this.type,
    this.url,
  });

  @override
  String toString() {
    return 'HomeBannerDataDatum(desc: $desc, id: $id, imagePath: $imagePath, isVisible: $isVisible, order: $order, title: $title, type: $type, url: $url)';
  }

  factory HomeBannerDataDatum.fromDataDescId30ImagePathHttpsWwwWanandroidComBlogimgs42da12d8De564439B40cEab66c227a4bPngIsVisible1Order2TitleType0UrlHttpsWwwWanandroidComBlogShow3352DescId6ImagePathHttpsWwwWanandroidComBlogimgs62c1bd68B5f34a3cA6497ca8c7dfabe6PngIsVisible1Order1TitleTabType1UrlHttpsWwwWanandroidComNaviDescAppId10ImagePathHttpsWwwWanandroidComBlogimgs50c115c2Cf6c4802Aa7bA4334de444cdPngIsVisible1Order1TitleAppType1UrlHttpsWwwWanandroidComBlogShow2ErrorCode0ErrorMsg(
      Map<String, dynamic> data) {
    return HomeBannerDataDatum(
      desc: data['desc']?.toString(),
      id: num.tryParse(data['id'].toString()),
      imagePath: data['imagePath']?.toString(),
      isVisible: num.tryParse(data['isVisible'].toString()),
      order: num.tryParse(data['order'].toString()),
      title: data['title']?.toString(),
      type: num.tryParse(data['type'].toString()),
      url: data['url']?.toString(),
    );
  }

  Map<String, dynamic>
      toDataDescId30ImagePathHttpsWwwWanandroidComBlogimgs42da12d8De564439B40cEab66c227a4bPngIsVisible1Order2TitleType0UrlHttpsWwwWanandroidComBlogShow3352DescId6ImagePathHttpsWwwWanandroidComBlogimgs62c1bd68B5f34a3cA6497ca8c7dfabe6PngIsVisible1Order1TitleTabType1UrlHttpsWwwWanandroidComNaviDescAppId10ImagePathHttpsWwwWanandroidComBlogimgs50c115c2Cf6c4802Aa7bA4334de444cdPngIsVisible1Order1TitleAppType1UrlHttpsWwwWanandroidComBlogShow2ErrorCode0ErrorMsg() {
    return {
      if (desc != null) 'desc': desc,
      if (id != null) 'id': id,
      if (imagePath != null) 'imagePath': imagePath,
      if (isVisible != null) 'isVisible': isVisible,
      if (order != null) 'order': order,
      if (title != null) 'title': title,
      if (type != null) 'type': type,
      if (url != null) 'url': url,
    };
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [HomeBannerDataDatum].
  factory HomeBannerDataDatum.fromJson(String data) {
    return HomeBannerDataDatum
        .fromDataDescId30ImagePathHttpsWwwWanandroidComBlogimgs42da12d8De564439B40cEab66c227a4bPngIsVisible1Order2TitleType0UrlHttpsWwwWanandroidComBlogShow3352DescId6ImagePathHttpsWwwWanandroidComBlogimgs62c1bd68B5f34a3cA6497ca8c7dfabe6PngIsVisible1Order1TitleTabType1UrlHttpsWwwWanandroidComNaviDescAppId10ImagePathHttpsWwwWanandroidComBlogimgs50c115c2Cf6c4802Aa7bA4334de444cdPngIsVisible1Order1TitleAppType1UrlHttpsWwwWanandroidComBlogShow2ErrorCode0ErrorMsg(
            json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [HomeBannerDataDatum] to a JSON string.
  String toJson() => json.encode(
      toDataDescId30ImagePathHttpsWwwWanandroidComBlogimgs42da12d8De564439B40cEab66c227a4bPngIsVisible1Order2TitleType0UrlHttpsWwwWanandroidComBlogShow3352DescId6ImagePathHttpsWwwWanandroidComBlogimgs62c1bd68B5f34a3cA6497ca8c7dfabe6PngIsVisible1Order1TitleTabType1UrlHttpsWwwWanandroidComNaviDescAppId10ImagePathHttpsWwwWanandroidComBlogimgs50c115c2Cf6c4802Aa7bA4334de444cdPngIsVisible1Order1TitleAppType1UrlHttpsWwwWanandroidComBlogShow2ErrorCode0ErrorMsg());

  HomeBannerDataDatum copyWith({
    String? desc,
    num? id,
    String? imagePath,
    num? isVisible,
    num? order,
    String? title,
    num? type,
    String? url,
  }) {
    return HomeBannerDataDatum(
      desc: desc ?? this.desc,
      id: id ?? this.id,
      imagePath: imagePath ?? this.imagePath,
      isVisible: isVisible ?? this.isVisible,
      order: order ?? this.order,
      title: title ?? this.title,
      type: type ?? this.type,
      url: url ?? this.url,
    );
  }
}
