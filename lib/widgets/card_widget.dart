import 'package:demo_app/tile_screen_one.dart';
import 'package:flutter/material.dart';


class CardWidget extends StatelessWidget {

  final String _imageUrl;
  final String _texto;

  CardWidget(this._texto, this._imageUrl);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: _crearContenedor(),
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => FirstTileWidget() )
        );
      },
    );
    
  }

  Widget _crearContenedor() {
    return Center(
      child: SizedBox(
        width: 400,
        height: 400,
        child: Container(
          margin: EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color.fromARGB(30, 0, 0, 0),
                offset: Offset(0.0, 10.0),
                spreadRadius: 0,
                blurRadius: 10
              )
            ]
          ),
          child: Card(
              elevation: 0,
              clipBehavior: Clip.antiAlias,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                    _crearImagenFondo(),
                    Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10)),
                        _crearHeader(),
                        Expanded(child: Container()),
                        _mensaje()
                      ],
                    )
                ],
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
            ),
        ),
        
      ),  
    );
  }

  Widget _crearHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
              children: <Widget>[
                Text('Anne Hathway', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                Text('Celebrity', style: TextStyle(color: Colors.white)),
                
              ],
            ),
        ),
        Container(
          child: Icon(Icons.favorite, color: Colors.white, size: 25),
          margin: EdgeInsets.only(right: 10),
        )
      ],
    );
       
  }

  Widget _crearImagenFondo() {
    return Hero(
      tag: "tile_one",
      child: Image(
        image: NetworkImage(_imageUrl),
        fit: BoxFit.cover,
      ),
      
    );
    
  }

  Widget _mensaje() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 20, left: 20),
        child: Text( _texto,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
          ),
        ),
      );
  }

}
