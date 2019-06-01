import 'package:flutter/material.dart';
/* Constants */
import 'package:flutter_hackernews/constants/routes.dart';
/* Widgets */
import 'package:flutter_hackernews/widgets/topnav.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        TopNavAppBar(),
        RaisedButton(
          child: Text("Go To Detail"),
          onPressed: () {
            Navigator.pushNamed(context, ROUTE_ARTICLE);
          },
        ),
      ]),
    );
  }
}
