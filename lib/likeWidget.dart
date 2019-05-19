import 'package:flutter/material.dart';

class LikeWidget extends StatefulWidget {
  
  LikeWidget({Key key, this.title}) : super(key: key);
  
  final String title;

  @override
  _LikeWidgetState createState() => _LikeWidgetState();
  
}

class _LikeWidgetState extends State<LikeWidget> {

  int _like = 0;

  void _incrementLike() {
    setState(() {
     _like++; 
    });
  }

  void _decrementLike() {
    setState(() {
     _like--;

     if (_like <= 0) {
       _like = 0;
     }
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Contador de Likes'),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.thumb_up),
            Text(
              'Você curtiu esse app:',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              '$_like' 'x',
              style: TextStyle(fontSize: 40.0),
              
            ),
          ],
        ),
      ),
      floatingActionButton:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Padding(
            padding: EdgeInsets.all(8.0),
            child: FloatingActionButton(
              child: Icon(Icons.thumb_down,color: Colors.white,),
              onPressed: _decrementLike,
            ),
          ),
          
          Padding(
            padding: EdgeInsets.all(8.0),
            child: FloatingActionButton(
              child: Icon(Icons.thumb_up,color: Colors.white,),
              onPressed: _incrementLike,
            ),
          ),
        ],
      )

    );
  }
}