import 'package:flutter/material.dart';
import 'package:portme/naviigation_drawer.dart';
import 'package:portme/Minsk.dart';
import 'package:portme/Brest.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavigationDrawer(),
        appBar: AppBar(
          title: const Text('Города Белорусии'),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(26, 97, 79, 1),
        ),
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
