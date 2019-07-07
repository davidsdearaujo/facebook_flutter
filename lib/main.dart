import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:facebook/src/shared/repositories/story_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'dart:io' show Platform;

import 'src/screens/home/home_screen.dart';


void main() {
  _setTargetPlatformForDesktop();
  runApp(MyApp());
}

void _setTargetPlatformForDesktop() {
  TargetPlatform targetPlatform;
  if (Platform.isMacOS || Platform.isLinux || Platform.isWindows) {
    targetPlatform = TargetPlatform.fuchsia;
  }
  if (targetPlatform != null) {
    debugDefaultTargetPlatformOverride = targetPlatform;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        // Bloc((i) => )
      ],
      dependencies: [
        Dependency((i) => StoryRepository()),
        Dependency((i) => Dio(BaseOptions(baseUrl: "https://raw.githubusercontent.com/davidsdearaujo/facebook_flutter/master/api"))),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xFF4167B2),
          iconTheme: IconThemeData(size: 18),
          scaffoldBackgroundColor: Color(0xFFDDDCE1),
          fontFamily: "Helvetica",
          textTheme: TextTheme(
            body1: TextStyle(
              fontSize: 10,
            ),
          ),
        ),
        home: HomeScreen(),
      ),
    );
  }
}
