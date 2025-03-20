import 'package:flutter/material.dart';
void main() {
  runApp(const LApp());
}

class LApp extends StatelessWidget {
  const LApp();
  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          body: Center(
              child:GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(color: Colors.blue, child:Text('Harini')),
                    Container(color: Colors.green,child:Text('Harini')),
                    Container(color: Colors.brown,child:Text('Harini')),
                    Container(color: Colors.white,child:Text('Harini')),
                  ],
                ),
              ),
            ),
          );
  }
}
