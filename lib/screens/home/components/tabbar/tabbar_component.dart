import 'package:flutter/material.dart';

import 'tab_tile.dart';

class TabbarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          TabTile(asset: 'assets/images/tabs/painel.png'),
          TabTile(asset: 'assets/images/tabs/pessoas.png'),
          TabTile(asset: 'assets/images/tabs/grupos.png'),
          TabTile(asset: 'assets/images/tabs/shop.png'),
          TabTile(asset: 'assets/images/tabs/alerta.png', badge: 14),
          TabTile(asset: 'assets/images/tabs/lista.png'),
        ],
      ),
    );
  }
}
