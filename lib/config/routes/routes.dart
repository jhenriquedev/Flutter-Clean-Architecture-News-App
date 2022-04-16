import 'package:flutter/material.dart';
import 'package:newsapp/feature/domain/domain.dart';
import 'package:newsapp/feature/presentation/screens/article-detail/article-detail.dart';
import 'package:newsapp/feature/presentation/screens/home/home.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const BreakingNewsView());

      case '/ArticleDetailsView':
        return _materialRoute(ArticleDetailsView(article: settings.arguments as ArticleEntity));
        
      default:
        return _materialRoute(const BreakingNewsView());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
