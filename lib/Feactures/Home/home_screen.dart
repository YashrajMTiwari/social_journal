import 'package:flutter/material.dart';
import 'package:journal/Widgets/journal_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    JournalCard(),
                    SizedBox(height: 10),
                    JournalCard(),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(child: Text("Journals")),
                  IconButton(onPressed: () {}, icon: Icon(Icons.create)),
                  InkWell(child: Text("Profile")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
