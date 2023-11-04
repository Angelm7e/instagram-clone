import 'package:flutter/material.dart';

class BurbujasStorie extends StatefulWidget {
  const BurbujasStorie({super.key, required this.nombreUsuario});
  final String nombreUsuario;
  @override
  State<BurbujasStorie> createState() => _BurbujasStorieState();
}

class _BurbujasStorieState extends State<BurbujasStorie> {

  
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 5, left: 5, right: 5),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle
            ),
          ),
          Text(widget.nombreUsuario,
          style: TextStyle(
            fontSize: 14,
            overflow: TextOverflow.ellipsis,
          ),)
        ],
      ),
    );
  }
}