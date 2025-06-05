mport 'package:flutter/material.dart';

class pc extends StatelessWidget {
  const pc({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        Container(
          color: Colors.pinkAccent,
          child: Text("pc"),
        ),
      ],
    );
  }
}
