import 'package:flutter/material.dart';
/* screens */
import 'package:flutter_hackernews/screens/article_screen.dart';
import 'package:flutter_hackernews/screens/home_screen.dart';

void main() => runApp(HackernewsApp());

class HackernewsApp extends StatelessWidget {
  // App routes
  final routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => HomeScreen(),
    '/article': (BuildContext context) => ArticleScreen()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hackernews App",
      theme: ThemeData(
        textTheme: TextTheme(
          button: TextStyle(color: Colors.white),
        ),
        appBarTheme: AppBarTheme(color: Colors.deepOrange),
      ),
      routes: routes,
    );
  }
}
