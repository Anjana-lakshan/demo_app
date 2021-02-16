import 'package:demo_app/screens/home_screen.dart';
import 'package:demo_app/tile_screen_one.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}



/*class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //safe area makes the widgets to stop intruding phyisical barriers of the phone this app doesnt have AppBar
    return new SafeArea(
      child: new Scaffold(
        body: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.white70,
                  child:Hero(
                    tag: "tile_one",
                      
                    // ClipRRect A widget that clips its child using a rounded rectangle. it needs BorderRadius
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      
                      
                      //i use gesture detector to detect the touches inside the ClipRRect
                      child: GestureDetector(
                        onTap: () {
                          //opening a new screen
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FirstTileWidget())
                                  );
                        },
                        child: Image.asset("assets/girlbg.jpg",height: 600,),
                      ),
                    ),
                  ),
                  
            ),
            bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.purple,
          
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined,
                          color: Colors.purple,
                          size: 35,),
              title: Text('User',),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.desktop_windows),
              title: Text('Windows'),
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
    
      ),
    );
  }
}*/