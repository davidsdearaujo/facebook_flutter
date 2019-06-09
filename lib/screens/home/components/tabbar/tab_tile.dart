import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'package:facebook/shared/widgets/badge/badge_widget.dart';

class TabTile extends StatelessWidget {
  final IconData icon;
  final int badge;

  TabTile({Key key, this.icon, this.badge}) : super(key: key);
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
          child: InkWell(
            onTap: () {},
            child: Icon(icon),
          ),
        ),
      ),
    );
  }
}
