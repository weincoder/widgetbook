import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/src/models/organizers/organizers.dart';
import 'package:widgetbook/src/providers/canvas_provider.dart';
import 'package:widgetbook/src/utils/utils.dart';
import 'package:widgetbook/src/widgets/tiles/spaced_tile.dart';

class StoryTile extends StatefulWidget {
  const StoryTile({
    Key? key,
    required this.story,
    required this.level,
  }) : super(key: key);

  final Story story;
  final int level;

  @override
  _StoryTileState createState() => _StoryTileState();
}

class _StoryTileState extends State<StoryTile> {
  @override
  Widget build(BuildContext context) {
    return SpacedTile(
      level: widget.level,
      organizer: widget.story,
      iconData: Icons.auto_stories,
      iconColor: Styles.storyColor,
      onClicked: () {
        CanvasProvider.of(context)!.selectStory(widget.story);
      },
    );
  }
}
