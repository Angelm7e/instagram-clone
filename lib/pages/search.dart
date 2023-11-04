import 'package:flutter/material.dart';
import 'package:instagram_clone/utilities/buscador_grid.dart';

class userSearch extends StatefulWidget {
  const userSearch({super.key});

  @override
  State<userSearch> createState() => _userSearchState();
}

class _userSearchState extends State<userSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Icon(Icons.search, color: Colors.grey[500],),
              Container(
                
                child: Text('Buscar',
                style: TextStyle(
                  color: Colors.grey[500]
                ),
                ),
              )
            ],
          ),
        ),
      ),
      body:searchGrid(),
    );
  }
}