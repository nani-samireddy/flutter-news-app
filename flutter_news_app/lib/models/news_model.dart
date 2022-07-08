class NewsModel {
  final List<Article> articles;

  NewsModel({required this.articles});

  factory NewsModel.fromJson({required Map<String, dynamic> jsonMap}) =>
      NewsModel(
          articles: List<Article>.from(
              jsonMap['articles'].map((e) => Article.fromJson(jsonMap: e))));
}

class Article {
  final String title;
  final String author;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  Article(
      {required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});

  factory Article.fromJson({required Map<String, dynamic> jsonMap}) => Article(
      author: jsonMap['author'] ?? "unknown",
      title: jsonMap['title'] ?? "no title",
      description: jsonMap['description'] ?? "no description",
      url: jsonMap['url'] ?? "unknown",
      urlToImage: jsonMap['urlToImage'] ?? "no Image",
      publishedAt: jsonMap['publishedAt'] ?? "unknown",
      content: jsonMap['content'] ?? "no content");
}
