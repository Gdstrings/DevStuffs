import 'package:flutter/material.dart';
import 'menu.dart';

String CB = 'https://img.pngio.com/beverage-cup-png-images-psds-for-download-pixelsquid-s11111360b-soda-cup-png-600_600.jpg';
String TLC = 'https://static.turbosquid.com/Preview/001235/567/KI/plastic-water-bottle-3D-model_DHQ.jpg';
String QPB = 'https://vivalasarepas.com/wp-content/uploads/2017/02/pineapple-juice.jpg';
String AMB = 'https://hips.hearstapps.com/del.h-cdn.co/assets/15/49/1448988386-delish-milkshakes-eggnog-chocolate.jpg';


//var Price = int.parse(Price);
int Price = 0;
class BEVDIS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BEVERAGES',
    
      home: Scaffold(
        appBar: AppBar(title: Text('Beverages',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),  ),
        backgroundColor: Colors.blueAccent[200],),
        body: Bevs(), backgroundColor: Colors.blue[200],
      ),
    );
  }
}


class Bevs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
       
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(TLC),
          ),
          title: Text('Water'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            //(Price + 50);
            //return Price; 
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Una()),
            );
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(CB),
          ),
          title: Text('Soda'),
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
          title: Text('Pineapple Juice'),
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
          title: Text('MilkShake'),
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
          },color: Colors.blue[300],
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
        title: Text("Water P50.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),  ),
        backgroundColor: Colors.blueAccent[200],),
      body: Stack(
        children: <Widget>[
          Center(
          child: new Image.network(
              'https://www.clonelab.at/wp-content/uploads/45.jpg',
             
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
        title: Text("Soda P75.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),  ),
        backgroundColor: Colors.blueAccent[200],),
      body: Stack(
        children: <Widget>[
          Center(
          child: new Image.network(
              'https://thenypost.files.wordpress.com/2019/09/diet-soda-4886.jpg?quality=80&strip=all',
             
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
        title: Text("Pineapple Juice P75.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),  ),
        backgroundColor: Colors.blueAccent[200],),
      body: Stack(
        children: <Widget>[
          Center(
          child: new Image.network(
              'https://kukinpot.com/wp-content/uploads/2018/07/Pineapple-Juice-Per-Cup.jpg',
             
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
        title: Text("MilkShake Juice P150.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),  ),
        backgroundColor: Colors.blueAccent[200],),
      body: Stack(
        children: <Widget>[
          Center(
          child: new Image.network(
              'https://hips.hearstapps.com/hmg-prod/images/190523-vanilla-milkshake-015-horizontal-1559169412.png',
             
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