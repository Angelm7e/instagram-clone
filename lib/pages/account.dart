import 'package:flutter/material.dart';
import 'package:instagram_clone/utilities/burbuja_personal.dart';
import 'package:instagram_clone/utilities/burbujas_stories.dart';
import 'package:instagram_clone/utilities/cuenta_pag1.dart';
import 'package:instagram_clone/utilities/cuenta_pag2.dart';
import 'package:instagram_clone/utilities/cuenta_pag3.dart';

class userAccount extends StatefulWidget {
  const userAccount({super.key});

  @override
  State<userAccount> createState() => _userAccountState();
}

class _userAccountState extends State<userAccount> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.lock_outline, ),
              Text("angel_en07"),
              Icon(Icons.arrow_drop_down_sharp)
            ],
          ),
          actions: [
            IconButton(onPressed: (){}, 
            icon: Icon(Icons.add_box_outlined),
            ),
            IconButton(onPressed: (){}, 
            icon: Icon(Icons.menu),
            )
          ]),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Foto de perfil
                Padding(
                  padding: const EdgeInsets.only(left:10),
                  child: BurbujaProfile(),
                ),
                Column(
                  children: [
                    Text('50',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    Text('Publicaciones')
                  ],
                ),
                Column(
                  children: [
                    Text('50',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    Text('Seguidores')
                  ],
                ),
                Column(
                  children: [
                    Text('50',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    Text('Publicaciones',
                    style: TextStyle(),)
                  ],
                ),
    
              ],
            ),
            Padding(padding: EdgeInsets.only(left: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Angel Encarnacion', 
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                Text('Prueba de instagram clone'),
              ],
            ),
    
            //      
            ),
            Padding(padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(2),
                      child: Container(
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text('Editar',
                        style: TextStyle(
                          color: Colors.black
                        ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.grey
                        )
                      ),
                    ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(2),
                      child: Container(
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text('Editar',
                        style: TextStyle(
                          color: Colors.black
                        ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.grey
                        )
                      ),
                    ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2),
                    child: Container(
                      
                      height: 33,
                      width: 33,
                    padding: EdgeInsets.all(5),
                    child: Center(
                      child: Icon(Icons.person_add, size: 15,),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.grey
                      )
                    ),
                  ),
                  ),
                  
                ]
              ),
            ),
            // Historias
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return BurbujasStorie(nombreUsuario: "Historia",);
                },
              ),
            ),
            // publicaciones 

            TabBar(tabs: [
              Tab(icon: Icon(Icons.grid_3x3_outlined),),
              Tab(icon: Icon(Icons.video_call),),
              Tab(icon: Icon(Icons.person_pin_outlined),),
            ]),

            Expanded(
              child: TabBarView(
                children: [
                  pagina1(),
                  pagina2(),
                  pagina3()
                ],
                )
                )
          ],
          
          
          
          
        ),
      ),
    );
  }
}