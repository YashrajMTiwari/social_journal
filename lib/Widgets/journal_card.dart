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
                Column(children: [Text("Title"), Text("DateTime")]),
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
              ],
            ),
          ),

          // Image or video container
          Container(decoration: BoxDecoration(), child: Text("Image/Video")),

          // Feel emoji and comment
          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 5, horizontal: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: Row(children: [Text("😍"), Text("Awsome")]),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                  ],
                ),

                // Journal content
                Text("Journal Content"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
