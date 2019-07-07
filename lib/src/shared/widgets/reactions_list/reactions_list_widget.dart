import 'package:facebook/src/shared/widgets/reaction/reaction_widget.dart';
import 'package:flutter/material.dart';

class ReactionsListWidget extends StatelessWidget {
  final void Function(ReactionEnum item) onReact;

  const ReactionsListWidget({Key key, this.onReact}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: ReactionEnum.values.map((currentReaction) {
        return GestureDetector(
          onTap: () {
            if (onReact != null) onReact(currentReaction);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ReactionWidget(reaction: currentReaction),
          ),
        );
      }).toList(),
    );
  }
}
