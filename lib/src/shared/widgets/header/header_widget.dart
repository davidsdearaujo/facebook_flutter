import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String time;

  const HeaderWidget({
    Key key,
    @required this.imageUrl,
    @required this.name,
    @required this.time,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          backgroundColor: Colors.transparent,
        ),
        SizedBox(width: 8),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .subtitle
                  .copyWith(color: Colors.white),
            ),
            Text(
              time,
              style: Theme.of(context)
                  .textTheme
                  .subtitle
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w300),
            ),
          ],
        )
      ],
    );
  }
}
