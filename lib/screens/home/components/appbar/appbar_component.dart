import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart';

import '../../../../shared/widgets/badge/badge_widget.dart';
import '../tabbar/tabbar_component.dart';


class AppbarComponent extends StatefulWidget implements PreferredSizeWidget {
  @override
  _AppbarComponentState createState() => _AppbarComponentState();

  @override
  Size get preferredSize => Size.fromHeight(90);
}

class _AppbarComponentState extends State<AppbarComponent> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Icon(
                        FontAwesomeIcons.camera,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Pesquisar",
                          prefixIcon: Icon(Icons.search, color: Colors.white70, size: 17.5),
                          hintStyle: TextStyle(color: Colors.white70, fontSize: 14),
                          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
                          disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Center(
                        child: BadgeWidget(
                          badgeContent: Text('3', style: TextStyle(fontSize: 10, color: Colors.white)),
                          child: Icon(
                            FontAwesomeIcons.facebookMessenger,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabbarComponent(),
            )
          ],
        ),
      ),
    );
  }
}
