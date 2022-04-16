import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portme/Brest.dart';
import 'package:portme/SignUp/signup.dart';
import 'Minsk.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios,
          size: 20,
          color: Color.fromRGBO(26, 97, 79, 1),),
      ), title: Text("Города республики Беларусь", style: TextStyle(color: Color.fromRGBO(26, 97, 79, 1), fontWeight: FontWeight.bold), ), backgroundColor: Colors.white,),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DatailPage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/minsk.png'),
              ),),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Минск", style: TextStyle(color: Colors.white, fontSize: 25),)
            ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BrestPage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/brest.png'),
              ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Брест", style: TextStyle(color: Colors.white, fontSize: 30),
                  )
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DatailPage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/gomel.png'),
              ),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Гомель", style: TextStyle(color: Colors.white, fontSize: 30),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DatailPage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/vitebsk.png')
              ),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Витебск", style: TextStyle(color: Colors.white, fontSize: 30),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DatailPage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/pinsk.png')
              ),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Пинск", style: TextStyle(color: Colors.white, fontSize: 30),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DatailPage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/polock.png')
              ),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Полоцк", style: TextStyle(color: Colors.white, fontSize: 30),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DatailPage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/mogilyov.png')
              ),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Могилёв", style: TextStyle(color: Colors.white, fontSize: 30),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DatailPage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/glubokoe.png')
              ),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Глубокое", style: TextStyle(color: Colors.white, fontSize: 30),)
                ],),
            ),
          ),
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
        ),
      ),),
    );
  }
}
