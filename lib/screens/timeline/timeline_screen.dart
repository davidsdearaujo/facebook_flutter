import 'package:flutter/material.dart';

import 'components/publishbar/publishbar_component.dart';

class TimelineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 1,
      separatorBuilder: (context, index) => SizedBox(height: 15),
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return PublishbarComponent();
          break;
        }
      },
    );
  }
}
