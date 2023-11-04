import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/account.dart';
import 'package:instagram_clone/pages/home.dart';
import 'package:instagram_clone/pages/reels.dart';
import 'package:instagram_clone/pages/search.dart';
import 'package:instagram_clone/pages/add.dart';
// import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePagetState();
}

class _HomePagetState extends State<HomePage> {

  int _selecctedIndex = 0;

  void _navBottonAppBar(int index){
    setState(() {
      _selecctedIndex = index;
    });
  }

  final List <Widget> paginas =[
    userHome(),
    userSearch(),
    UserAdd(),
    userReels(),
    userAccount()
  ];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: paginas[_selecctedIndex],
     bottomNavigationBar: BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      currentIndex:_selecctedIndex ,
      onTap: _navBottonAppBar,
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
      BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_outlined), label: 'Nuevo'),
      BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'Reels'),
      BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: 'Cuenta'),
      ]),
    );
  }
}
