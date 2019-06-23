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
          TabTile(asset: 'assets/painel.png'),
          TabTile(asset: 'assets/pessoas.png'),
          TabTile(asset: 'assets/grupos.png'),
          TabTile(asset: 'assets/shop.png'),
          TabTile(asset: 'assets/alerta.png', badge: 14),
          TabTile(asset: 'assets/lista.png'),
        ],
      ),
    );
  }
}
