import 'package:facebook/src/shared/widgets/badge/badge_widget.dart';
import 'package:flutter/material.dart';


class TabTile extends StatelessWidget {
  final String asset;
  final int badge;

  TabTile({Key key, this.asset, this.badge}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: BadgeWidget(
          badgeContent: badge == null
              ? null
              : Text(
                  badge?.toString(),
                  style: TextStyle(fontSize: 8, color: Colors.white),
                ),
          child: Container(
            height: 25,
            child: InkWell(
              onTap: () {},
              child: Image.asset(asset),
            ),
          ),
        ),
      ),
    );
  }
}
