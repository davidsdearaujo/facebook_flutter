import 'package:flutter/material.dart';

import '../timeline/timeline_screen.dart';
import 'components/appbar/appbar_component.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent(),
      body: TimelineScreen(),
    );
  }
}
