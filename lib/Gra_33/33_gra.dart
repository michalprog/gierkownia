import 'package:flutter/material.dart';
import 'package:gierkownia/Gra_33/33_klasa.dart';

class Screen_gra extends StatefulWidget {
  final Klasa33 gra33;
  final VoidCallback switchScreen;
  final int liczbakoncowa, typgry;
  List<String> tpGry = ["1 vs 1", "bot(łatwy)", "bot trudny"];
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
            Text(widget.tpGry[widget.typgry], style: TextStyle(fontSize: 24)),
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
                      onPressed: () {},
                      child: const Text("+1", style: TextStyle(fontSize: 20))),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("+2", style: TextStyle(fontSize: 20))),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("+3", style: TextStyle(fontSize: 20))),
                ),
              ],
            ),
          ),
    ]));
  }
}
