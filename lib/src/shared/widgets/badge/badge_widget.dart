import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BadgeWidget extends StatelessWidget {
  final Widget child;
  final Widget badgeContent;

  BadgeWidget({
    Key key,
    this.child,
    this.badgeContent,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        child,
        if (badgeContent != null)
          Positioned(
            top: -5,
            right: -10,
            child: Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(721),
              ),
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.all(3.721),
                child: badgeContent,
              ),
            ),
          )
      ],
    );
  }
}
