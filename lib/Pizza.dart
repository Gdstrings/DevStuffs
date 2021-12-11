import 'package:flutter/material.dart';
import 'menu.dart';


String CB = 'https://italianexpressonline.com/wp-content/uploads/2019/05/cheese.jpg';
String TLC = 'https://www.frije.com/content/recipes/727/800-1.jpg';
String QPB = 'https://www.marcos.com/uploads/2018/03/7201_Marcos_AllMeat_RetinaMed_2.jpg';
String AMB = 'https://cdn.ruled.me/wp-content/uploads/2014/08/pepperonipizza.jpg';

//var Price = int.parse(Price);
int Price = 0;
class PIZDIS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizza',
    
      home: Scaffold(
        appBar: AppBar(title: Text('Pizza',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),  ),
        backgroundColor: Colors.yellowAccent[200],),
        body: Pizza(), backgroundColor: Colors.yellow[200],
      ),
    );
  }
}


class Pizza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
       
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(CB),
          ),
          title: Text('Cheese Pizza'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Una()),
            );
          },
          selected: true,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(TLC),
          ),
          title: Text('Ham and Cheese Pizza'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Dalawa()),
            );
          },
        ),

        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(QPB),
          ),
          title: Text('All Meat Pizza'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Tatlo()),
            );
          },
          enabled: true,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(AMB),
          ),
          title: Text('Pepperoni Pizza'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Apat()),
            );
          },
        ),  RaisedButton(
          padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MenuApp()),);
          },color: Colors.yellow[300],
          child: Text('Menu'),
        ),
        
        
      ],
    );
  }
}


class Una extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Cheese Pizza P250.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),  ),
        backgroundColor: Colors.yellowAccent[200],),
      body: Stack(
        children: <Widget>[
          Center(
          child: new Image.network(
              'https://www.reducedtoclear.co.nz/wp-content/uploads/2019/07/Remano-Cheese-Pizza-3pk.jpg',
             
              fit: BoxFit.cover,
            ),
      ),
        Center( 
          child: Text('',style: TextStyle(fontWeight: FontWeight.bold))),
        ],
        ),backgroundColor: Colors.black
    );
  }
}

class Dalawa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ham and Cheese Pizza P299.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),  ),
        backgroundColor: Colors.yellowAccent[200],),
      body: Stack(
        children: <Widget>[
          Center(
          child: new Image.network(
              'https://order.dominos.com.au/ManagedAssets/AU/product/P099/AU_P099_en_hero_4055.jpg?v1318202222',
             
              fit: BoxFit.cover,
            ),
      ),
        Center( 
          child: Text('',style: TextStyle(fontWeight: FontWeight.bold))),
        ],
        ),backgroundColor: Colors.black
    );
  }
}

class Tatlo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        title: Text("All Meat Pizza P350.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),  ),
        backgroundColor: Colors.yellowAccent[200],),
      body: Stack(
        children: <Widget>[
          Center(
          child: new Image.network(
              'https://iamafoodblog.com/wp-content/uploads/2015/10/meatlovers-pizza-8w.jpg',
             
              fit: BoxFit.cover,
            ),
      ),
        Center( 
          child: Text('',style: TextStyle(fontWeight: FontWeight.bold))),
        ],
        ),backgroundColor: Colors.black
    );
  }
}

class Apat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Pepperoni Pizza P350.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),  ),
        backgroundColor: Colors.yellowAccent[200],),
      body: Stack(
        children: <Widget>[
          Center(
          child: new Image.network(
              'https://cdn.ruled.me/wp-content/uploads/2014/08/pepperonipizza.jpg',
             
              fit: BoxFit.cover,
            ),
      ),
        Center( 
          child: Text('',style: TextStyle(fontWeight: FontWeight.bold))),
        ],
        ),backgroundColor: Colors.black
    );
  }
}