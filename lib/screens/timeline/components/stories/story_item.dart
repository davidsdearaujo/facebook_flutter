import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 120,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(
                  "https://media.licdn.com/dms/image/C4E03AQEMs0OIB2pnXA/profile-displayphoto-shrink_800_800/0?e=1567036800&v=beta&t=9zjCCjnwkQse7-IVjx3yXHNo83lwd6igwYFjS_-_3XA"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          left: 10,
          right: 10,
          child: Text("Alvaro Vasconcelos", style: TextStyle(),),
        )
      ],
    );
  }
}
