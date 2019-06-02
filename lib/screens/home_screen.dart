import 'package:flutter/material.dart';
/* Constants */
import 'package:flutter_hackernews/constants/routes.dart';
/* Widgets */
import 'package:flutter_hackernews/widgets/topnav.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
            title: Text("Prev"),
            icon: Icon(Icons.chevron_left),
          ),
          BottomNavigationBarItem(
            title: Text("Next"),
            icon: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
