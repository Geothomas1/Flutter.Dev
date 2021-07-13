import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';
import '../post.dart';
import '../widgets/storyCard.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            lableText: "Add Story",
            story: dq,
            dp: dq,
            createStatusButton: true,
          ),
          StoryCard(
            lableText: "Joseph",
            story: josephstatus,
            dp: joseph,
          ),
          StoryCard(
            lableText: "Sebin",
            story: fishingf,
            dp: sebin,
          ),
        ],
      ),
    );
  }
}
