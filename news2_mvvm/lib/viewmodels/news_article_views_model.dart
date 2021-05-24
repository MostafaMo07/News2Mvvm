import 'package:news2_mvvm/models/news_article.dart';

class NewsArticleViewModel {
  NewsArticle _newsArticle;
  NewsArticleViewModel({NewsArticle article}) : _newsArticle = article;

  String get title {
    return _newsArticle.title;
  }

  String get author {
    return _newsArticle.author;
  }

  String get description {
    return _newsArticle.description;
  }

  String get imageUrl {
    return _newsArticle.urlToImage;
  }

  String get url {
    return _newsArticle.url;
  }

  String get publishedAt {
    return _newsArticle.publlishedAt;
  }

  String get content {
    return _newsArticle.content;
  }
}
