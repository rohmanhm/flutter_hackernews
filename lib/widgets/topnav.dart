import 'package:flutter/material.dart';

enum TabActive { Top, New, Ask }

class TopNavAppBar extends StatefulWidget {
  TopNavAppBar({this.onTabActiveChange});

  final Function onTabActiveChange;

  @override
  _TopNavAppBarState createState() => _TopNavAppBarState();
}

class _TopNavAppBarState extends State<TopNavAppBar> {
  TabActive tabActive = TabActive.Top;

  void onTabChange(TabActive activeTab, value) {
    widget.onTabActiveChange(value);
    setState(() {
      tabActive = activeTab;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;

    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 10, left: 10, right: 10),
      width: double.infinity,
      height: 80.0,
      decoration: BoxDecoration(color: primaryColor),
      child: Row(
        children: <Widget>[
          TopNavButton(
            text: "Top",
            isActive: tabActive == TabActive.Top,
            onPressed: (value) {
              this.onTabChange(TabActive.Top, value);
            },
          ),
          TopNavButton(
            text: "New",
            isActive: tabActive == TabActive.New,
            onPressed: (value) {
              this.onTabChange(TabActive.New, value);
            },
          ),
          TopNavButton(
            text: "Ask",
            isActive: tabActive == TabActive.Ask,
            onPressed: (value) {
              this.onTabChange(TabActive.Ask, value);
            },
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
  final Function onPressed;

  _handleButtonPressed() {
    this.onPressed(text);
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: this._handleButtonPressed,
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .button
            .copyWith(fontWeight: isActive ? FontWeight.w900 : FontWeight.w300),
      ),
    );
  }
}
