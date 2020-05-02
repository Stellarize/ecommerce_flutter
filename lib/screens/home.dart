import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage extends StatefulWidget {
  @override 
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black87,),
          onPressed: (){},
        ),
        actions: <Widget>[
          IconButton(
            icon: FaIcon(FontAwesomeIcons.shoppingCart),
            onPressed: (){},
            iconSize: 15,
            color: Colors.black,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Container(
             width: double.infinity,
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
             ),
             padding: EdgeInsets.all(20.0),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Nos', style: TextStyle(color: Colors.black87, fontSize: 25),),
                SizedBox(
                  height: 5,
                ),
                Text('Bons Plans', style: TextStyle(color: Colors.black, fontSize: 40),),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(244, 243, 243, 1),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search, color: Colors.black87),
                      hintText: "Effectuez votre recherche",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                   
                  )
                ),
                SizedBox(
                  height: 10,
                ),
              ],)
           ),
            SizedBox(
                  height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Categories', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        promoCard('assets/images/one.png'),
                        promoCard('assets/images/two.png'),
                        promoCard('assets/images/3.png')
                      ],
                    ),
                  ),
                  SizedBox(
                  height: 10,
                  ),
                  Text('Nos promos du jour', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        ListCard('assets/images/one.png'),
                        ListCard('assets/images/one.png'),
                    ],),
                    
                  )
                ],
              ) 
            )
         ]
       ),
      ),
    );
  }
  Widget promoCard(image){
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: EdgeInsets.only(right:15),
        decoration: BoxDecoration(
          
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.scaleDown,
            image: AssetImage(image)
          ),
        )
      ),
    );
  }

  Widget ListCard(image){
    return AspectRatio(
      aspectRatio: 4 / 2.62,
      child: Container(
        margin: EdgeInsets.only(bottom: 13),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.scaleDown,
            image: AssetImage(image)
          ),
        ),
      ),
    );
  }
}


