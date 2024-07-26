class HotKeyWebPageData {
  String? category;
  String? icon;
  num? id;
  String? link;
  String? name;
  num? order;
  num? visible;

  HotKeyWebPageData({
    this.category,
    this.icon,
    this.id,
    this.link,
    this.name,
    this.order,
    this.visible,
  });

  factory HotKeyWebPageData.fromJson(Map<String, dynamic> json) {
    return HotKeyWebPageData(
      category: json['category']?.toString(),
      icon: json['icon']?.toString(),
      id: num.tryParse(json['id'].toString()),
      link: json['link']?.toString(),
      name: json['name']?.toString(),
      order: num.tryParse(json['order'].toString()),
      visible: num.tryParse(json['visible'].toString()),
    );
  }
}
