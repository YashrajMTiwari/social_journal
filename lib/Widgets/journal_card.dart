import 'package:animated_emoji/animated_emoji.dart';
import 'package:flutter/material.dart';

class JournalCard extends StatelessWidget {
  const JournalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Title, DateTime and menu button
          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 5, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("New typewritter"),
                    Text("20th September 2026 at 23:05"),
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
              ],
            ),
          ),

          // Image or video container
          Container(
            decoration: BoxDecoration(),
            child: Image.asset(
              "assets/images/demo_image.jpg",
              fit: BoxFit.contain,
            ),
          ),

          // Feel emoji and comment
          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 5, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: Row(
                        children: [
                          AnimatedEmoji(AnimatedEmojis.slightlyHappy),
                          Text("Happy"),
                        ],
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                  ],
                ),
                // Journal content
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library in London, took a 1914 Cicero translation and scrambled it to make dummy text for Letraset's Body Type sheets. It has survived not only many decades, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised thanks to these sheets and more recently with desktop publishing software like Aldus PageMaker and Microsoft Word including versions of Lorem Ipsum.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
