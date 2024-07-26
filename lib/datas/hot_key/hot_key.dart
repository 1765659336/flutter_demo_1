class HotKey {
  num? id;
  String? link;
  String? name;
  num? order;
  num? visible;

  HotKey({this.id, this.link, this.name, this.order, this.visible});

  factory HotKey.fromJson(Map<String, dynamic> json) {
    return HotKey(
      id: num.tryParse(json['id'].toString()),
      link: json['link']?.toString(),
      name: json['name']?.toString(),
      order: num.tryParse(json['order'].toString()),
      visible: num.tryParse(json['visible'].toString()),
    );
  }
}
