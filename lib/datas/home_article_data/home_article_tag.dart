class HomeArticleTag {
  HomeArticleTag({
    required this.name,
    required this.url,
  });

  HomeArticleTag.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        url = json['url'];

  final String name;
  final String url;
}
