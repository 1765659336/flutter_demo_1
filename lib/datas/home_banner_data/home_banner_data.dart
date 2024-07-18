class HomeBannerData {
  String? desc;
  num? id;
  String? imagePath;
  num? isVisible;
  num? order;
  String? title;
  num? type;
  String? url;

  HomeBannerData({
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
    return 'HomeBannerData(desc: $desc, id: $id, imagePath: $imagePath, isVisible: $isVisible, order: $order, title: $title, type: $type, url: $url)';
  }

  factory HomeBannerData.fromJson(dynamic json) {
    return HomeBannerData(
      desc: json['desc']?.toString(),
      id: num.tryParse(json['id'].toString()),
      imagePath: json['imagePath']?.toString(),
      isVisible: num.tryParse(json['isVisible'].toString()),
      order: num.tryParse(json['order'].toString()),
      title: json['title']?.toString(),
      type: num.tryParse(json['type'].toString()),
      url: json['url']?.toString(),
    );
  }

  HomeBannerData copyWith({
    String? desc,
    num? id,
    String? imagePath,
    num? isVisible,
    num? order,
    String? title,
    num? type,
    String? url,
  }) {
    return HomeBannerData(
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
