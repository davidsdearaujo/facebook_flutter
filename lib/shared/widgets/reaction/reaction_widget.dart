import 'package:flutter/material.dart';

import 'reaction_enum.dart';
export 'reaction_enum.dart';

class ReactionWidget extends StatelessWidget {
  final ReactionEnum reaction;

  const ReactionWidget({
    Key key,
    this.reaction = ReactionEnum.like,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Image.asset(
        "assets/images/reactions/${ReactionEnumLabel[reaction]}.png",
      ),
    );
  }
}
