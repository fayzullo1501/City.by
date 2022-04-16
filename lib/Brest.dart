import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portme/HomePage.dart';

class BrestPage extends StatefulWidget {
  const BrestPage({Key? key}) : super(key: key);

  @override
  State<BrestPage> createState() => _BrestPageState();
}

class _BrestPageState extends State<BrestPage> {
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
      ), title: Text("О городе",
        style: TextStyle(color: Color.fromRGBO(26, 97, 79, 1),
            fontWeight: FontWeight.bold), ),
        backgroundColor: Colors.white,),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/brest.png'),
                    fit: BoxFit.cover
                )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * .4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.2),
                        offset: Offset(0, -4),
                        blurRadius: 8
                    )
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20,
                        left: 25,
                        right: 25
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text("Брест",
                            style: TextStyle( fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(26, 97, 79, 1)),),
                        ),
                        InkWell(
                            onTap: () {},
                            child: SvgPicture.asset('assets/images/heart.svg', height: 45, width: 45, color: Color.fromRGBO(26, 97, 79, 1),)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20
                    ),
                    child: Row(
                      children: [
                        Text("Брест - город Белоруссии, административный центр Минской\n"
                            "области и Минского района, в состав которых не входит,\n"
                            "поскольку является самостоятельной административно-терри-\n"
                            "ториальной единицей с особым (столичным) статусом.\n"
                            "Крупнейший транспортный узел, политический, экономический,\n"
                            "культурный и научный центр страны. Является ядром Минской\n"
                            "агломерации. Десятый по численности населения (без учёта\n"
                            "пригородов) город в Европе,пятый — после Москвы, Санкт-\n"
                            "Петербурга, Киева, Ташкента натерритории бывшего СССР. \n"
                            "Город расположен недалеко от гео-графическогоцентра страны\n"
                            "и стоит на реке Свислочи. Площадьсоставляет 348,84 км², \n "
                            "население — 1 996 553 человек без учёта пригородов.")
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
