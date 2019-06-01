import 'package:flutter/material.dart';
import 'package:flutter_hackernews/routes.dart';

void main() => runApp(HackernewsApp());

class HackernewsApp extends StatelessWidget {
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
      routes: Routes.routes,
    );
  }
}
