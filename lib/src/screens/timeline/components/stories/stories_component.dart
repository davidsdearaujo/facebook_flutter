import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../story/story_screen.dart';
import 'story_item.dart';

class StoriesComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      color: Colors.white,
      width: double.infinity,
      child: ListView.separated(
        itemCount: 10,
        padding: EdgeInsets.all(15),
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 6.5),
        itemBuilder: (context, index) {
          if (index == 0)
            return StoryItem(
              name: "Adicionar ao story",
              storyImageUrl:
                  "https://media.licdn.com/dms/image/C5603AQEKYex09zfWlg/profile-displayphoto-shrink_100_100/0?e=1565827200&v=beta&t=Ta6g_Depl3poGqvIeNTHEGvGUpjNXSQ94WFJdXILLdA",
              onTap: () {
                //TODO: Conectar com a tela correspondente
              },
            );
          else
            return StoryItem(
              name: "Alvaro Vasconcelos",
              perfilImageUrl:
                  "https://media.licdn.com/dms/image/C4E03AQEMs0OIB2pnXA/profile-displayphoto-shrink_800_800/0?e=1567036800&v=beta&t=9zjCCjnwkQse7-IVjx3yXHNo83lwd6igwYFjS_-_3XA",
              storyImageUrl:
                  "https://media.licdn.com/dms/image/C4E03AQEMs0OIB2pnXA/profile-displayphoto-shrink_800_800/0?e=1567036800&v=beta&t=9zjCCjnwkQse7-IVjx3yXHNo83lwd6igwYFjS_-_3XA",
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => StoryScreen(),
                    fullscreenDialog: true,
                  ),
                );
              },
            );
        },
      ),
    );
  }
}
