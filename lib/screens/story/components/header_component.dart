import 'package:facebook/shared/widgets/header/header_widget.dart';
import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: HeaderWidget(
            imageUrl: "https://media.licdn.com/dms/image/C4E03AQEMs0OIB2pnXA/profile-displayphoto-shrink_800_800/0?e=1567036800&v=beta&t=9zjCCjnwkQse7-IVjx3yXHNo83lwd6igwYFjS_-_3XA",
            name: "Alvaro Vasconcelos",
            time: "3 h",
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.more_horiz, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.close, color: Colors.white),
              onPressed: Navigator.of(context).pop,
            ),
          ],
        )
      ],
    );
  }
}
