import 'package:flutter/material.dart';
/* Constants */
import 'package:flutter_hackernews/constants/routes.dart';
/* Screens */
import 'package:flutter_hackernews/screens/article_screen.dart';
import 'package:flutter_hackernews/screens/home_screen.dart';

class Routes {
  // App routes builder
  static final routes = <String, WidgetBuilder>{
    ROUTE_HOME: (BuildContext context) => HomeScreen(),
    ROUTE_ARTICLE: (BuildContext context) => ArticleScreen()
  };
}
