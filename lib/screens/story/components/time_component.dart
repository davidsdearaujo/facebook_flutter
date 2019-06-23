import 'package:flutter/material.dart';

class TimeComponent extends StatelessWidget {
  final int maxTime;
  final int currentTime;

  const TimeComponent({
    Key key,
    @required this.maxTime,
    @required this.currentTime,
  })  : assert(maxTime != null),
        assert(currentTime != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 3),
        height: 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white24,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: currentTime,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: maxTime - currentTime,
              child: Container(color: Colors.transparent),
            ),
          ],
        ),
      ),
    );
  }
}
