import 'package:flutter/material.dart';
import 'package:journal/Widgets/journal_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState()=> HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: JournalCard(),
          )
        ],
      ),
    );
  }
}