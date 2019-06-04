import 'package:flutter/material.dart';
import 'package:flutter_hackernews/screens/article_screen.dart';

class Posts extends StatelessWidget {
  Posts({Key key, this.page, this.topic});
  final int page;
  final String topic;

  final androidVersions = [
    "Cupcake",
    "Donut",
    "Eclair",
    "Froyo",
    "Gingerbread",
    "Honeycomb",
    "Ice Cream Sandwich",
    "Jelly Bean",
    "Kitkat",
    "Lollipop",
    "Marshmallow",
    "Nougat",
    "Oreo",
    "Pie"
  ];

  Widget _itemBuilder(BuildContext context, int index) {
    var android = androidVersions[index];
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleScreen(title: android),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '$topic $android',
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          itemCount: androidVersions.length,
          itemBuilder: _itemBuilder,
        ),
      ),
    );
  }
}
