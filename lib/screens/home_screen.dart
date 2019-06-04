import 'package:flutter/material.dart';
/* Constants */
// import 'package:flutter_hackernews/constants/routes.dart';
import 'package:flutter_hackernews/widgets/posts.dart';
/* Widgets */
import 'package:flutter_hackernews/widgets/topnav.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var topic = 'Top';

  void _changeTopic(value) {
    setState(() {
      topic = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        TopNavAppBar(
          onTabActiveChange: this._changeTopic,
        ),
        Posts(
          page: 1,
          topic: topic,
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: (value) {
          if (value == 0) {
            print("Prev");
            return;
          }

          if (value == 1) {
            print("Next");
            return;
          }
        },
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
