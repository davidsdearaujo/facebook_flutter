import 'package:flutter/material.dart';

import 'components/stories/stories_component.dart';
import 'components/publishbar/publishbar_component.dart';

class TimelineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 2,
      separatorBuilder: (context, index) => SizedBox(height: 15),
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return PublishbarComponent();
            break;
          case 1:
            return StoriesComponent();
            break;
          default:
            return Container(
              width: 50,
              height: 50,
              color: Colors.green,
            );
        }
      },
    );
  }
}
