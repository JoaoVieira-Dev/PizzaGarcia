import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _search = TextEditingController();
  List<String> itens = ["Bebidas","Pizzas","Petiscos","Porções","Doces"];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: TextField(
          cursorColor: Colors.red,
          style: TextStyle(
            fontSize: 14
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            isDense: true,                      // Added this
            contentPadding: EdgeInsets.all(8),
            filled: true,
            fillColor: Colors.white,
            
          ),
        ),
        actions: <Widget>[
          ButtonBar(
            children: <Widget>[
              IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
            ],
          )
        ],
      ),
      body: ListView(
        children: <Widget>[         
          Container(
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.only(top: 15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: itens.length,
              itemBuilder: (BuildContext context, int index) => buildTest(context, index),

              ),
          ),

          Container(
            width: double.infinity,
            height: 150,
            margin: EdgeInsets.only(top: 15),
          )
        ],
      ),
    );
  }

  Widget buildTest(BuildContext context, int index){
    return InkWell(
      onTap: (){},
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: Colors.black12,
            ),
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 60,
            height: 60,
          ),

          SizedBox(height: 10,),

          Text(itens[index])
        ],
      ),
    );
  }

  
}