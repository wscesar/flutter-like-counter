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
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),

      body: Column (
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[

          Icon(Icons.thumb_up),

          Text(
            'Você curtiu esse app:',
            style: TextStyle(fontSize: 16.0, ),
            textAlign: TextAlign.center,
          ),

          Text(
            '$_like' 'x',
            style: TextStyle(fontSize: 40.0),
            textAlign: TextAlign.center,
          ),

          Divider(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              FloatingActionButton(
                onPressed: _decrementLike,
                child: Icon(Icons.thumb_down),
                backgroundColor: Colors.red,
              ),

              Padding(padding: EdgeInsets.all(8)),

              FloatingActionButton(
                onPressed: _incrementLike,
                child: Icon(Icons.thumb_up,color: Colors.white,),
                backgroundColor: Colors.green,
              ),

            ],

          ),

        ],

      ),

    );
  }
}