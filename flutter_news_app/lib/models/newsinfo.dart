// To parse this JSON data, do
//
//     final NewsModel = NewsModelFromMap(jsonString);

//import 'dart:convert';
//
//class NewsModel {
//  NewsModel({
//    required this.status,
//    required this.totalResults,
//    required this.articles,
//  });
//
//  String status;
//  int totalResults;
//  List<Article> articles;
//
//  factory NewsModel.fromJson(String str) => NewsModel.fromMap(json.decode(str));
//
//  String toJson() => json.encode(toMap());
//
//  factory NewsModel.fromMap(Map<String, dynamic> json) => NewsModel(
//        status: json["status"],
//        totalResults: json["totalResults"],
//        articles:
//            List<Article>.from(json["articles"].map((x) => Article.fromMap(x))),
//      );
//
//  Map<String, dynamic> toMap() => {
//        "status": status,
//        "totalResults": totalResults,
//        "articles": List<dynamic>.from(articles.map((x) => x.toMap())),
//      };
//}
//
//class Article {
//  Article({
//    required this.source,
//    required this.author,
//    required this.title,
//    required this.description,
//    required this.url,
//    required this.urlToImage,
//    required this.publishedAt,
//    required this.content,
//  });
//
//  Source source;
//  String author;
//  String title;
//  String description;
//  String url;
//  String urlToImage;
//  DateTime publishedAt;
//  String content;
//
//  factory Article.fromJson(String str) => Article.fromMap(json.decode(str));
//
//  String toJson() => json.encode(toMap());
//
//  factory Article.fromMap(Map<String, dynamic> json) => Article(
//        source: Source.fromMap(json["source"]),
//        author: json["author"] == null ? null : json["author"],
//        title: json["title"],
//        description: json["description"],
//        url: json["url"],
//        urlToImage: json["urlToImage"] == null ? null : json["urlToImage"],
//        publishedAt: DateTime.parse(json["publishedAt"]),
//        content: json["content"],
//      );
//
//  Map<String, dynamic> toMap() => {
//        "source": source.toMap(),
//        "author": author == null ? null : author,
//        "title": title,
//        "description": description,
//        "url": url,
//        "urlToImage": urlToImage == null ? null : urlToImage,
//        "publishedAt": publishedAt.toIso8601String(),
//        "content": content,
//      };
//}
//
//class Source {
//  Source({
//    required this.id,
//    required this.name,
//  });
//
//  String id;
//  String name;
//
//  factory Source.fromJson(String str) => Source.fromMap(json.decode(str));
//
//  String toJson() => json.encode(toMap());
//
//  factory Source.fromMap(Map<String, dynamic> json) => Source(
//        id: json["id"],
//        name: json["name"],
//      );
//
//  Map<String, dynamic> toMap() => {
//        "id": id,
//        "name": name,
//      };
//}
//