import 'package:http/http.dart' as http;
import 'dart:convert';

class News {
  List<Article> news = [];

  Future<List<Article>> getNews() async {
    var uri = Uri.parse('https://newsapi.org/v2/everything?q=apple&from=2021-04-15&to=2021-04-15&sortBy=popularity&apiKey=0379371a41b0420993fd3304989dd963');
    var response = await http.get(uri);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          Article article = Article(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            publshedAt: DateTime.parse(element['publishedAt']),
            content: element["content"],
            articleUrl: element["url"],
          );
          news.add(article);
        }
      });
    }

    return news;
  }
}

class Article {
  String title;
  String author;
  String description;
  String urlToImage;
  DateTime publshedAt;
  String content;
  String articleUrl;

  Article(
      {this.title,
      this.description,
      this.author,
      this.content,
      this.publshedAt,
      this.urlToImage,
      this.articleUrl});
}
