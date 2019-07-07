import 'package:facebook/src/screens/story/story_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import 'story_page.dart';

class StoryModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => StoryBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => StoryPage();

  static Inject get to => Inject<StoryModule>.of();
}
