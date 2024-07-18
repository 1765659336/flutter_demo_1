import 'package:flutter_demo_1/datas/home_article_data/home_article_tag.dart';

class HomeArticle {
  HomeArticle({
    required this.adminAdd,
    required this.apkLink,
    required this.audit,
    required this.author,
    required this.canEdit,
    required this.chapterId,
    required this.chapterName,
    required this.collect,
    required this.courseId,
    required this.desc,
    required this.descMd,
    required this.envelopePic,
    required this.fresh,
    required this.host,
    required this.id,
    required this.isAdminAdd,
    required this.link,
    required this.niceDate,
    required this.niceShareDate,
    required this.origin,
    required this.prefix,
    required this.projectLink,
    required this.publishTime,
    required this.realSuperChapterId,
    required this.selfVisible,
    required this.shareDate,
    required this.shareUser,
    required this.superChapterId,
    required this.superChapterName,
    required this.tags,
    required this.title,
    required this.type,
    required this.userId,
    required this.visible,
    required this.zan,
  });

  HomeArticle.fromJson(Map<String, dynamic> json)
      : adminAdd = json['adminAdd'],
        apkLink = json['apkLink'],
        audit = json['audit'],
        author = json['author'],
        canEdit = json['canEdit'],
        chapterId = json['chapterId'],
        chapterName = json['chapterName'],
        collect = json['collect'],
        courseId = json['courseId'],
        desc = json['desc'],
        descMd = json['descMd'],
        envelopePic = json['envelopePic'],
        fresh = json['fresh'],
        host = json['host'],
        id = json['id'],
        isAdminAdd = json['isAdminAdd'],
        link = json['link'],
        niceDate = json['niceDate'],
        niceShareDate = json['niceShareDate'],
        origin = json['origin'],
        prefix = json['prefix'],
        projectLink = json['projectLink'],
        publishTime = json['publishTime'],
        realSuperChapterId = json['realSuperChapterId'],
        selfVisible = json['selfVisible'],
        shareDate = json['shareDate'],
        shareUser = json['shareUser'],
        superChapterId = json['superChapterId'],
        superChapterName = json['superChapterName'],
        tags = (json['tags'] as List<dynamic>)
            .map((e) => HomeArticleTag.fromJson(e as Map<String, dynamic>))
            .toList(),
        title = json['title'],
        type = json['type'],
        userId = json['userId'],
        visible = json['visible'],
        zan = json['zan'];

  final bool adminAdd;
  final String apkLink;
  final int audit;
  final String author;
  final bool canEdit;
  final int chapterId;
  final String chapterName;
  final bool collect;
  final int courseId;
  final String desc;
  final String descMd;
  final String envelopePic;
  final bool fresh;
  final String host;
  final int id;
  final bool isAdminAdd;
  final String link;
  final String niceDate;
  final String niceShareDate;
  final String origin;
  final String prefix;
  final String projectLink;
  final int publishTime;
  final int realSuperChapterId;
  final int selfVisible;
  final int shareDate;
  final String shareUser;
  final int superChapterId;
  final String superChapterName;
  final List<HomeArticleTag> tags;
  final String title;
  final int type;
  final int userId;
  final int visible;
  final int zan;
}
