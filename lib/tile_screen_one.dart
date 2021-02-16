import 'package:demo_app/main.dart';
import "package:flutter/material.dart";

class FirstTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: ClipRRect(
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(60.0)),
              child: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 0,
                      top: 0,
                      right: 0,
                      left: 0,
                      child: Hero(
                        tag: "tile_one",
                        child: Image(
                          image: NetworkImage(
                              'https://data.whicdn.com/images/112664058/original.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 10,
                        right: 30,
                        child: Text("data",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            )))
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  _buildButton(),
                  _buildtitleInfo(),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildtitleInfo() {
    return Column(
      children: <Widget>[
      Row(
        children: <Widget>[
          Text("Jyothis astrology",
              style: TextStyle(color: Colors.purple, fontSize: 20)),
        ],
    ),
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
            Container(
              height: 40,
              width: 120,
              margin: EdgeInsets.all(20),
              child: Image.asset('assets/circle-outline.png',
              width: 100,
              ),
            ),
          ],
        
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Text("Jyothis astrology",
              style: TextStyle(color: Colors.purple, fontSize: 15)),
              Text("Jyothis astrology ",
              style: TextStyle(color: Colors.purple, fontSize: 10)),
          ],
        
          ),
          
        ],
    ),
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
            Container(
              height: 40,
              width: 120,
              margin: EdgeInsets.all(20),
              child: Image.asset('assets/circle-outline.png',
              width: 100,
              ),
            ),
          ],
        
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Text("Jyothis astrology",
              style: TextStyle(color: Colors.purple, fontSize: 15)),
              Text("Jyothis astrology ",
              style: TextStyle(color: Colors.purple, fontSize: 10)),
          ],
        
          ),
          
        ],
    ),
    Row(
        children: <Widget>[
          Column(
            children: <Widget>[
            Container(
              height: 40,
              width: 120,
              margin: EdgeInsets.all(20),
              child: Image.asset('assets/circle-outline.png',
              width: 100,
              ),
            ),
          ],
        
          ),
          Column(
            children: <Widget>[
            Text("Jyothis astrology",
              style: TextStyle(color: Colors.purple, fontSize: 15)),
              Text("Jyothis astrology ",
              style: TextStyle(color: Colors.purple, fontSize: 10)),
          ],
        
          ),
          
        ],
    ),

    Row(
        children: <Widget>[
          Text("Jyothis astrology",
              style: TextStyle(color: Colors.purple, fontSize: 20)),
        ],
    ),
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
            Container(
              height: 40,
              width: 120,
              margin: EdgeInsets.all(20),
              child: Image.asset('assets/circle-outline.png',
              width: 100,
              ),
            ),
          ],
        
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Text("Jyothis astrology",
              style: TextStyle(color: Colors.purple, fontSize: 15)),
          ],
        
          ),
          
        ],
    ),
    
    
    ]
    );
  }

  _buildButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: 40,
              width: 120,
              margin: EdgeInsets.all(20),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                onPressed: () {},
                color: Colors.purple,
                textColor: Colors.white,
                child: Text("Match Details", style: TextStyle(fontSize: 12)),
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              height: 40,
              width: 120,
              margin: EdgeInsets.all(20),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                onPressed: () {},
                color: Colors.purple,
                textColor: Colors.white,
                child: Text("Personality", style: TextStyle(fontSize: 12)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
