import 'package:flutter/material.dart';

import 'story_item.dart';

class StoriesComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 15),
      height: 230,
      width: double.infinity,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 15),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 5),
        itemCount: 10,
        itemBuilder: (context, index){
          return StoryItem();
        },
      ),
    );
  }
}