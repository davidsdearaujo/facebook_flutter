import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'tab_tile.dart';

class TabbarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          TabTile(icon: FontAwesomeIcons.newspaper),
          TabTile(icon: FontAwesomeIcons.userFriends, badge: 3),
          TabTile(icon: FontAwesomeIcons.tv),
          TabTile(icon: FontAwesomeIcons.userCircle),
          TabTile(icon: FontAwesomeIcons.bell, badge: 14),
          TabTile(icon: FontAwesomeIcons.bars),
        ],
      ),
    );
  }
}
