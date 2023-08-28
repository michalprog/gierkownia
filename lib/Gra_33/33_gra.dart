import 'package:flutter/material.dart';
import 'package:gierkownia/Gra_33/33_klasa.dart';

class Screen_gra extends StatefulWidget {
  final Klasa33 gra33;
  final VoidCallback switchScreen;
  final int liczbakoncowa, typgry;
  Screen_gra({
    Key? key,
    required this.switchScreen,
    required this.liczbakoncowa,
    required this.typgry,
  })  : gra33 = Klasa33(typgry, liczbakoncowa),
        super(key: key);

  @override
  State<Screen_gra> createState() => _Screen_graState();

}

class _Screen_graState extends State<Screen_gra> {
  void ruch(int liczba){
    setState(() {
      widget.gra33.ruch_gracza(liczba);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Container(
        height: 100,
        width: 200,
        color: Colors.yellowAccent,
        alignment: Alignment.center,
        child:
            Text(widget.gra33.tpGry[widget.gra33.gmt], style: TextStyle(fontSize: 24)),
      ),
      const SizedBox(
        height: 120,
      ),
      Container(
        height: 100,
        width: double.infinity,
        alignment: Alignment.center,
        child: Text(widget.gra33.wyswietl_liczbe().toString()),
      ),
          Expanded(
          child:SizedBox(
            height: double.infinity,
          ),),
          Container(
            height: 200,
            alignment: Alignment.bottomCenter,
            child:Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {ruch(1);},
                      child: const Text("+1", style: TextStyle(fontSize: 20))),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {ruch(2);},
                      child: const Text("+2", style: TextStyle(fontSize: 20))),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {ruch(3);},
                      child: const Text("+3", style: TextStyle(fontSize: 20))),
                ),
              ],
            ),
          ),
    ]));
  }
}
