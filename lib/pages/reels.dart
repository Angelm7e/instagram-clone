import 'package:flutter/material.dart';

class userReels extends StatefulWidget {
  const userReels({super.key});

  @override
  State<userReels> createState() => _userReelsState();
}

class _userReelsState extends State<userReels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Text('Reels'),),
    );
  }
}