class HomeArticleDataTag {
  String? name;
  String? url;

  HomeArticleDataTag({this.name, this.url});

  @override
  String toString() => 'Tag(name: $name, url: $url)';

  factory HomeArticleDataTag.fromJson(dynamic json) {
    return HomeArticleDataTag(
      name: json['name']?.toString(),
      url: json['url']?.toString(),
    );
  }

  HomeArticleDataTag copyWith({
    String? name,
    String? url,
  }) {
    return HomeArticleDataTag(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }
}
