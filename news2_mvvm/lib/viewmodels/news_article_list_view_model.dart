import 'package:flutter/material.dart';
import 'package:news2_mvvm/models/news_article.dart';
import 'package:news2_mvvm/services/web_service.dart';
import 'package:news2_mvvm/viewmodels/news_article_views_model.dart';

enum LoadingStatus { completed, searching, empty }

class NewsArticleListViewModel with ChangeNotifier {
  LoadingStatus loadingStatus = LoadingStatus.empty;
  List<NewsArticleViewModel> articles = List<NewsArticleViewModel>();

  void topHeadlines() async {
    List<NewsArticle> newsArticle = await WebService().fetchTopHeadlines();

    loadingStatus = LoadingStatus.searching;
    notifyListeners();

    this.articles = newsArticle
        .map((article) => NewsArticleViewModel(article: article))
        .toList();

    if (this.articles.isEmpty) {
      loadingStatus = LoadingStatus.empty;
    } else {
      loadingStatus = LoadingStatus.completed;
    }
    notifyListeners();
  }
}
