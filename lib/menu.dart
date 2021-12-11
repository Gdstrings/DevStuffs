import 'package:flutter/material.dart';
import 'package:yumwego/Pizza.dart';
import 'BURGER.dart';
import 'BEV.dart';
import 'Pizza.dart';
void main() => runApp(MenuApp());

class MenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF578B81),
        dividerColor: Colors.grey,
      ),
      home: DashboardScreen(),
    );
  }
}
var Price = '0';
//String Price = Price.toString();

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YUMWEGO',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),  ),
        backgroundColor: Colors.yellow[200],
        actions: <Widget>[
          PopupMenuButton<int>(
            icon: Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<int>>[
                PopupMenuItem(
              
          
                  child: Text('FAQ',)
          
                ),
                
              ];
            },
          ),
        ],
      ),
      
      body:   IconTheme.merge(
        data: IconThemeData(
          color: Colors.red[200],
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(Icons.restaurant, size: 72.0),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            
                            Text(
                              'PRICE: ' +(Price),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                           
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                  Divider(height: 1.0),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.fastfood,
                      text: 'Burgers',
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BURGDIS()),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.local_bar,
                      text: 'BEVERAGES',
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BEVDIS()),
                        );
                       },
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.local_pizza,
                      text: 'Pizza',
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PIZDIS()),
                        );
                       },
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardButton extends StatelessWidget {
  const DashboardButton({
    Key key,
    @required this.icon,
    @required this.text,
    this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            
            FractionallySizedBox(
              widthFactor: 0.6,
              child: FittedBox(
                child: Icon(icon),
              ),
            ), 
            SizedBox(height: 16.0),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textScaleFactor: 0.8, 
            ),
            SizedBox(height: 4.0),
            Padding( 
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(height: 1.0),
            ),
          ],
        ),
      ),
    );
  }
}

