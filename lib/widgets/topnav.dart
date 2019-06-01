import 'package:flutter/material.dart';

class TopNavAppBar extends StatelessWidget {
  _onNavMenuTopPressed() {
    print("Top nav menu pressed");
  }

  _onNavMenuNewPressed() {
    print("New nav menu pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 10, left: 10, right: 10),
      width: double.infinity,
      height: 80.0,
      decoration: BoxDecoration(color: Colors.deepOrange),
      child: Row(
        children: <Widget>[
          TopNavButton(
            text: "Top",
            onPressed: this._onNavMenuTopPressed,
          ),
          TopNavButton(
            text: "New",
            onPressed: this._onNavMenuNewPressed,
          ),
        ],
      ),
    );
  }
}

class TopNavButton extends StatelessWidget {
  TopNavButton({@required this.onPressed, @required this.text, this.isActive});

  final bool isActive;
  final String text;
  // Action onPressed
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Text(
          this.text,
          style: Theme.of(context).textTheme.button,
        ),
        padding: EdgeInsets.all(10.0),
      ),
    );
  }
}
