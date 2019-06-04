import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  ArticleScreen({Key key, this.title = ''});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(children: <Widget>[
        RaisedButton(
          child: Text("Back to home"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ]),
    );
  }
}
