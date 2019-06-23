import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String name;
  final String storyImageUrl;
  final String perfilImageUrl;
  final void Function() onTap;
  final bool visualized;

  const StoryItem({
    Key key,
    @required this.name,
    this.storyImageUrl,
    this.perfilImageUrl,
    this.onTap,
    this.visualized = false,
  })  : assert(name != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isOwner = perfilImageUrl == null;
    Color circleColor =
        visualized ? Colors.white : Theme.of(context).primaryColor;

    return Stack(
      children: <Widget>[
        Container(
          width: 120,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(13),
            image: DecorationImage(
              image: NetworkImage(storyImageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: 120,
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: Container(
            width: 40,
            height: 40,
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isOwner ? Colors.white : Colors.transparent,
              border: isOwner
                  ? null
                  : Border.all(
                      color: circleColor,
                      width: 2,
                    ),
            ),
            child: isOwner
                ? Icon(
                    Icons.add,
                    size: 23,
                    color: Theme.of(context).primaryColor,
                  )
                : ClipOval(
                    child: Image.network(
                      perfilImageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
          ),
        ),
        Positioned(
          bottom: 5,
          left: 10,
          right: 10,
          child: Text(
            name,
            style:
                Theme.of(context).textTheme.body1.copyWith(color: Colors.white),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              radius: -20,
              onTap: onTap,
              highlightColor: Colors.black12,
              splashFactory: InkRipple.splashFactory,
              child: Container(width: 120),
            ),
          ),
        ),
      ],
    );
  }
}
