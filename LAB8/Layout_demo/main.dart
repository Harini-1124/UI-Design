import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
@override
Widget build(BuildContext c){
return MaterialApp(
    title: 'LayoutDemo',
    home: Scaffold(
    appBar: AppBar(title: Text("Hello"),

  ),
  body: Center(
    child: Container(
      height:500,
      width:500,
      child: GridView.count(
        crossAxisCount:2,

        children:[
          Container(
            color:Colors.blueAccent,
            child:
            Column(
              children:[
                Icon(Icons.add),
                Icon(Icons.add_alert),
                Icon(Icons.add_circle),


              ],
           ),
            ),
         Container(
            color:Colors.teal,
            child:
            Row(children:[
              Icon(Icons.add_card),
              Icon(Icons.add_outlined),
              Icon(Icons.add_rounded),
            ],

          ),
      ),
      Container(
        color:Colors.lightGreen,
        child:

        Stack(
          children:[
           Container(height: 80,
              width:80,
            color: Colors.yellowAccent,
          ),
          Container(height: 70,
            width:70,
             color: Colors.orangeAccent,
          ),
        Container(height: 60,
          width:60,
          color: Colors.greenAccent
),
          ],
       ),
        ),
  ],


),
),
),
),
);
}
}


