import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'components/footer_component.dart';
import 'components/header_component.dart';
import 'components/time_component.dart';

class StoryScreen extends StatefulWidget {
  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays([
      SystemUiOverlay.bottom,
      SystemUiOverlay.top,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.green,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://media.licdn.com/dms/image/C4E03AQEMs0OIB2pnXA/profile-displayphoto-shrink_800_800/0?e=1567036800&v=beta&t=9zjCCjnwkQse7-IVjx3yXHNo83lwd6igwYFjS_-_3XA"),
          ),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        TimeComponent(
                          maxTime: 5000,
                          currentTime: 2000,
                        ),
                        TimeComponent(
                          maxTime: 5000,
                          currentTime: 0,
                        ),
                        TimeComponent(
                          maxTime: 5000,
                          currentTime: 0,
                        ),
                        TimeComponent(
                          maxTime: 5000,
                          currentTime: 0,
                        ),
                        TimeComponent(
                          maxTime: 5000,
                          currentTime: 0,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    HeaderComponent(),
                  ],
                ),
              ),
              FooterComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
