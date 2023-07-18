import 'package:json_annotation/json_annotation.dart';

part 'news_respo.g.dart';

@JsonSerializable()
class NewsRespo {
  List<Article> articles;

  NewsRespo({this.articles = const []});

  factory NewsRespo.fromJson(Map<String, dynamic> json) {
    return _$NewsRespoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewsRespoToJson(this);
}

@JsonSerializable()
class Article {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Article({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return _$ArticleFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
@JsonSerializable()
class Source {
  String? id;
  String? name;

  Source({this.id, this.name});

  factory Source.fromJson(Map<String, dynamic> json) {
    return _$SourceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SourceToJson(this);
}

