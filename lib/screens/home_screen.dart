import 'package:flutter/material.dart';
import '../widgets/card_widget.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      primary: true,
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF1F7FB)
        ),
        child: Center(
          child: PageView(
            pageSnapping: false,
            controller: PageController(
              viewportFraction: 0.6
            ),
            children: <Widget>[
              CardWidget('Favourable Match', 'https://data.whicdn.com/images/112664058/original.jpg'),
              
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined,color: Colors.purple,),
              title: Text('Profile',style: TextStyle(color: Colors.purple),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined,color: Colors.purple,),
              title: Text('Add Partner',style: TextStyle(color: Colors.purple),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_border_outlined,color: Colors.purple,),
              title: Text('Celebrity',style: TextStyle(color: Colors.purple),),
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
    
    );
  }
}