import 'home_article_data_tag.dart';

class HomeArticleDataDatas {
  bool? adminAdd;
  String? apkLink;
  num? audit;
  String? author;
  bool? canEdit;
  num? chapterId;
  String? chapterName;
  bool? collect;
  num? courseId;
  String? desc;
  String? descMd;
  String? envelopePic;
  bool? fresh;
  String? host;
  num? id;
  bool? isAdminAdd;
  String? link;
  String? niceDate;
  String? niceShareDate;
  String? origin;
  String? prefix;
  String? projectLink;
  num? publishTime;
  num? realSuperChapterId;
  num? selfVisible;
  num? shareDate;
  String? shareUser;
  num? superChapterId;
  String? superChapterName;
  List<HomeArticleDataTag>? tags;
  String? title;
  num? type;
  num? userId;
  num? visible;
  num? zan;

  HomeArticleDataDatas({
    this.adminAdd,
    this.apkLink,
    this.audit,
    this.author,
    this.canEdit,
    this.chapterId,
    this.chapterName,
    this.collect,
    this.courseId,
    this.desc,
    this.descMd,
    this.envelopePic,
    this.fresh,
    this.host,
    this.id,
    this.isAdminAdd,
    this.link,
    this.niceDate,
    this.niceShareDate,
    this.origin,
    this.prefix,
    this.projectLink,
    this.publishTime,
    this.realSuperChapterId,
    this.selfVisible,
    this.shareDate,
    this.shareUser,
    this.superChapterId,
    this.superChapterName,
    this.tags,
    this.title,
    this.type,
    this.userId,
    this.visible,
    this.zan,
  });

  @override
  String toString() {
    return 'HomeArticleData(adminAdd: $adminAdd, apkLink: $apkLink, audit: $audit, author: $author, canEdit: $canEdit, chapterId: $chapterId, chapterName: $chapterName, collect: $collect, courseId: $courseId, desc: $desc, descMd: $descMd, envelopePic: $envelopePic, fresh: $fresh, host: $host, id: $id, isAdminAdd: $isAdminAdd, link: $link, niceDate: $niceDate, niceShareDate: $niceShareDate, origin: $origin, prefix: $prefix, projectLink: $projectLink, publishTime: $publishTime, realSuperChapterId: $realSuperChapterId, selfVisible: $selfVisible, shareDate: $shareDate, shareUser: $shareUser, superChapterId: $superChapterId, superChapterName: $superChapterName, tags: $tags, title: $title, type: $type, userId: $userId, visible: $visible, zan: $zan)';
  }

  factory HomeArticleDataDatas.fromJson(dynamic json) {
    return HomeArticleDataDatas(
      adminAdd: json['adminAdd']?.toString().contains("true"),
      apkLink: json['apkLink']?.toString(),
      audit: num.tryParse(json['audit'].toString()),
      author: json['author']?.toString(),
      canEdit: json['canEdit']?.toString().contains("true"),
      chapterId: num.tryParse(json['chapterId'].toString()),
      chapterName: json['chapterName']?.toString(),
      collect: json['collect']?.toString().contains("true"),
      courseId: num.tryParse(json['courseId'].toString()),
      desc: json['desc']?.toString(),
      descMd: json['descMd']?.toString(),
      envelopePic: json['envelopePic']?.toString(),
      fresh: json['fresh']?.toString().contains("true"),
      host: json['host']?.toString(),
      id: num.tryParse(json['id'].toString()),
      isAdminAdd: json['isAdminAdd']?.toString().contains("true"),
      link: json['link']?.toString(),
      niceDate: json['niceDate']?.toString(),
      niceShareDate: json['niceShareDate']?.toString(),
      origin: json['origin']?.toString(),
      prefix: json['prefix']?.toString(),
      projectLink: json['projectLink']?.toString(),
      publishTime: num.tryParse(json['publishTime'].toString()),
      realSuperChapterId: num.tryParse(json['realSuperChapterId'].toString()),
      selfVisible: num.tryParse(json['selfVisible'].toString()),
      shareDate: num.tryParse(json['shareDate'].toString()),
      shareUser: json['shareUser']?.toString(),
      superChapterId: num.tryParse(json['superChapterId'].toString()),
      superChapterName: json['superChapterName']?.toString(),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => HomeArticleDataTag.fromJson(e as dynamic))
          .toList(),
      title: json['title']?.toString(),
      type: num.tryParse(json['type'].toString()),
      userId: num.tryParse(json['userId'].toString()),
      visible: num.tryParse(json['visible'].toString()),
      zan: num.tryParse(json['zan'].toString()),
    );
  }

  HomeArticleDataDatas copyWith({
    bool? adminAdd,
    String? apkLink,
    num? audit,
    String? author,
    bool? canEdit,
    num? chapterId,
    String? chapterName,
    bool? collect,
    num? courseId,
    String? desc,
    String? descMd,
    String? envelopePic,
    bool? fresh,
    String? host,
    num? id,
    bool? isAdminAdd,
    String? link,
    String? niceDate,
    String? niceShareDate,
    String? origin,
    String? prefix,
    String? projectLink,
    num? publishTime,
    num? realSuperChapterId,
    num? selfVisible,
    num? shareDate,
    String? shareUser,
    num? superChapterId,
    String? superChapterName,
    List<HomeArticleDataTag>? tags,
    String? title,
    num? type,
    num? userId,
    num? visible,
    num? zan,
  }) {
    return HomeArticleDataDatas(
      adminAdd: adminAdd ?? this.adminAdd,
      apkLink: apkLink ?? this.apkLink,
      audit: audit ?? this.audit,
      author: author ?? this.author,
      canEdit: canEdit ?? this.canEdit,
      chapterId: chapterId ?? this.chapterId,
      chapterName: chapterName ?? this.chapterName,
      collect: collect ?? this.collect,
      courseId: courseId ?? this.courseId,
      desc: desc ?? this.desc,
      descMd: descMd ?? this.descMd,
      envelopePic: envelopePic ?? this.envelopePic,
      fresh: fresh ?? this.fresh,
      host: host ?? this.host,
      id: id ?? this.id,
      isAdminAdd: isAdminAdd ?? this.isAdminAdd,
      link: link ?? this.link,
      niceDate: niceDate ?? this.niceDate,
      niceShareDate: niceShareDate ?? this.niceShareDate,
      origin: origin ?? this.origin,
      prefix: prefix ?? this.prefix,
      projectLink: projectLink ?? this.projectLink,
      publishTime: publishTime ?? this.publishTime,
      realSuperChapterId: realSuperChapterId ?? this.realSuperChapterId,
      selfVisible: selfVisible ?? this.selfVisible,
      shareDate: shareDate ?? this.shareDate,
      shareUser: shareUser ?? this.shareUser,
      superChapterId: superChapterId ?? this.superChapterId,
      superChapterName: superChapterName ?? this.superChapterName,
      tags: tags ?? this.tags,
      title: title ?? this.title,
      type: type ?? this.type,
      userId: userId ?? this.userId,
      visible: visible ?? this.visible,
      zan: zan ?? this.zan,
    );
  }
}
