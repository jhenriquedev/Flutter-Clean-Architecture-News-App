import 'package:flutter/material.dart';
import 'package:newsapp/feature/domain/domain.dart';
import 'package:newsapp/feature/presentation/screens/article-detail/article-detail.dart';
import 'package:newsapp/feature/presentation/screens/home/daily-news.dart';
import 'package:newsapp/feature/presentation/screens/saved-article/saved-article.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const DailyNews());

      case '/ArticleDetails':
        return _materialRoute(ArticleDetailsView(article: settings.arguments as ArticleEntity));

       case '/SavedArticles':
        return _materialRoute(const SavedArticles());

      default:
        return _materialRoute(const DailyNews());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
