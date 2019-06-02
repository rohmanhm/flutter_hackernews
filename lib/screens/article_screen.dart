import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Article"),
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
