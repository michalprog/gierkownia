import 'package:flutter/material.dart';
class Screen_gra extends StatefulWidget {
  final VoidCallback switchScreen;
  const Screen_gra({Key? key,required this.switchScreen}) : super(key: key);

  @override
  State<Screen_gra> createState() => _Screen_graState();
}

class _Screen_graState extends State<Screen_gra> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
          children:[
            const SizedBox(
              height: 80,
            ),



          ]
      )
    );
  }
}
