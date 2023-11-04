// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Square extends StatelessWidget {
   Square({super.key, required this.nombreUsuario});
  final String nombreUsuario ;

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              
              children: [
                // user and alerDialog
                Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              shape: BoxShape.circle
                            ),
                          ),
                        ),

                        Text('userName'),
                      ],
                    ),
                    TextButton(onPressed: (){}, 
                        style: ButtonStyle(),
                        child: Text('...',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                // Picture container
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.grey[300]
                  ),
                  child: Center(
                    child: Text(nombreUsuario, 
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),

                // Debajo del post
                Padding(padding: EdgeInsets.all(2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(onPressed: (){}, 
                          icon: Icon(Icons.favorite_border)),
                          IconButton(onPressed: (){}, 
                          icon: Icon(Icons.chat_bubble_outline_outlined)),
                          IconButton(onPressed: (){}, 
                          icon: Icon(Icons.share))
                        ],
                      ),
                      IconButton(onPressed: (){}, 
                          icon: Icon(Icons.bookmark_border))
                    ],
                  )
                ),
                // Liked by

                Padding(padding: EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      Text('Liked by '),
                      Text('angelM7en ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      Text('y '),
                      Text('otros...')
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:5),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black
                      ),
                      children: [
                        TextSpan(
                          text: 'angelM7en',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          )
                        ),
                        TextSpan(
                          text: 'but i do know one thing tho, wemen they come they go'
                        )
                        ]
                    )
                  ),
                )

              ],
            ),
          );
  }
}