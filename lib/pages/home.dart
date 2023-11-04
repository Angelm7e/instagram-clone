import 'package:flutter/material.dart';
import 'package:instagram_clone/utilities/burbujas_stories.dart';
import 'package:instagram_clone/utilities/user_post.dart';

class userHome extends StatefulWidget {
  const userHome({super.key});


  @override
  State<userHome> createState() => _userHomeState();
}

class _userHomeState extends State<userHome> {
  final List _usuarios =[
    'user 1',
    'user 1',
    'user 1',
    'user 1',
    'user 1',
    'user 1',
    'user 1',
    
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation:0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram', 
            style: TextStyle(
              color: Colors.black
            ),),
            Row(
              children: [
                IconButton(onPressed: (){}, 
                icon: Icon(Icons.favorite_outline)),
                IconButton(onPressed: (){}, 
                icon: Icon(Icons.message)),
              ],
            )
        ]),
      ),
      body: 
      Column(
        children: [
          // STATUS
          Container(
            height: 110,
            decoration: BoxDecoration(
            ),
            child: ListView.builder(
              itemCount: _usuarios.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(child: 
                Row(
                  children: [
                    BurbujasStorie(nombreUsuario: _usuarios[index],),
                  ],
                )
                );
              },
            ),
          ),

          // POST
          Expanded(
            child: ListView.builder(
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) {
              return Square(nombreUsuario: _usuarios[index]);
            },
          ),)
        ],
      ),
    );
  }
}