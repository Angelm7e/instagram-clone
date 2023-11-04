import 'package:flutter/material.dart';

class BurbujaProfile extends StatelessWidget {
  const BurbujaProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300]
                ),
                child: Container(),
              );
  }
}