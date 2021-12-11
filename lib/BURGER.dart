import 'package:flutter/material.dart';
import 'menu.dart';

String CB = 'https://resize.hswstatic.com/w_907/gif/cheeseburger-1.jpg';
String TLC = 'https://c4.wallpaperflare.com/wallpaper/360/942/365/food-burgers-burger-wallpaper-preview.jpg';
String QPB = 'https://www.mcdonalds.com/content/dam/usa/nfl/nutrition/items/regular/desktop/t-mcdonalds-qpc-deluxe-burger.jpg';
String AMB = 'https://i.pinimg.com/originals/c0/bf/14/c0bf14b08237361587a496c3e0ef7a9e.jpg';

//var Price = int.parse(Price);
         
int Price = 0;
class BURGDIS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Burger',
    
      home: Scaffold(
        appBar: AppBar(title: Text('Burger',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),  ),
        backgroundColor: Colors.redAccent[200],),
        body: Burger(), backgroundColor: Colors.red[200],
      ),
    );
  }
}


class Burger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(CB),backgroundColor: Colors.blue[200],
          ),
          title: Text('Cheese Burger'),
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
          title: Text('TLC Burger'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>Dalawa()),
            );
          },
        ),

        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(QPB),
          ),
          title: Text('Quarter Burger'),
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
          title: Text('All Meat Burger'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Apat()),
            );
          },
        ),
         RaisedButton(
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MenuApp()),);
          },color: Colors.red[300],
       
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
        title: Text("Cheese Burger P50.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),  ),
        backgroundColor: Colors.redAccent[200],),
      
      body: Stack(
        children: <Widget>[
          Center(
          child: new Image.network(
              'https://www.seriouseats.com/recipes/images/2017/04/20170423-ultra-smashed-burger-video-primary2-1500x1125.jpg',
             
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
        title: Text("TLC Burger P75.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),  ),
        backgroundColor: Colors.redAccent[200],),
        
     
      body: Stack(
        children: <Widget>[
          Center(
          child: new Image.network(
              'https://lraccs.files.wordpress.com/2013/03/unknown-cheeseburger.jpg',
             
              fit: BoxFit.cover,
            ),
      ),
      Center( 
         child: Text('',style: TextStyle(fontWeight: FontWeight.bold),)
        ),
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
        title: Text("Quarter Burger P100.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),  ),
        backgroundColor: Colors.redAccent[200],),
        body: Stack(
        children: <Widget>[
          Center(
          child: new Image.network(
              'https://i.insider.com/5a5fd47ff42149e50e8b55b0?width=800&format=jpeg',
              
              fit: BoxFit.cover,
            ),
      ),
      Center( 
       
           child: Text('',style: TextStyle(fontWeight: FontWeight.bold),),        
      ),
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
          title: Text("All Meat Burger P150.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),  ),
        backgroundColor: Colors.redAccent[200],),
     body: Stack(
        children: <Widget>[
          Center(
          child: new Image.network(
              'https://bigseventravel.com/wp-content/uploads/2019/04/Screenshot-2019-02-14-at-16.05.54.png',
             
              fit: BoxFit.cover,
            ),
      ),
      Center( 
         child: Text('',style: TextStyle(fontWeight: FontWeight.bold)),
        
      ),
        ],
     ),backgroundColor: Colors.black
    );
  }
}