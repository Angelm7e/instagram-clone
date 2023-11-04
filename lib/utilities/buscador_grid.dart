import 'package:flutter/material.dart';

class searchGrid extends StatelessWidget {
  const searchGrid ({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return Padding(padding: EdgeInsets.all(2),
        child: Container(
          color: Colors.grey[300],
        ),
        );
      },
    );
  }
}