import 'package:flutter/material.dart';

class UserAdd extends StatefulWidget {
  const UserAdd({super.key});

  @override
  State<UserAdd> createState() => _userAddState();
}

class _userAddState extends State<UserAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Text('Add'),),
    );
  }
}