import 'package:flutter/material.dart';
import 'package:gierkownia/Gra_33/33_klasa.dart';

class Screen_gra extends StatefulWidget {
  Klasa33 gra33=new Klasa33();
  final VoidCallback switchScreen;
  final int liczbakoncowa, typgry;
  List<String> tpGry =["1 vs 1","bot(łatwy)","bot trudny"];
   Screen_gra(
      {Key? key,
      required this.switchScreen,
      required this.liczbakoncowa,
      required this.typgry})
      : super(key: key);

  @override
  State<Screen_gra> createState() => _Screen_graState();
}

class _Screen_graState extends State<Screen_gra> {


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Container(
        height:100 ,
          width: 200,
          child: Text(widget.tpGry[widget.typgry]),
      ),
          const SizedBox(
            height: 80,
          ),
    ]));
  }
}
