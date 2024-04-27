import 'package:flutter/material.dart';
import 'package:gierkownia/Gra_33/33_klasa.dart';

class ScreenGame extends StatefulWidget {
  final Klasa33 gra33;
  final VoidCallback switchScreen;
  final int liczbakoncowa, typgry;
  ScreenGame({
    Key? key,
    required this.switchScreen,
    required this.liczbakoncowa,
    required this.typgry,
  })  : gra33 = Klasa33(typgry, liczbakoncowa),
        super(key: key);

  @override
  State<ScreenGame> createState() => _ScreenGameState();
}

class _ScreenGameState extends State<ScreenGame> {
  void ruch(int liczba) {
    setState(() {

      if (widget.liczbakoncowa == widget.gra33.Actual_Number) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Koniec gry"),
              content: Text(widget.gra33.wynik_okienko()),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Zamknięcie dialogu
                    widget.switchScreen(); // Przejście do innej strony/ekranu
                    setState(() {
                      widget.gra33.koniec();
                    });
                  },
                  child: Text("zagraj nową grę"),
                ),
              ],
            );
          },
        );
      }
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
        child: Text(widget.gra33.tpGry[widget.gra33.gmt],
            style: TextStyle(fontSize: 24)),
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
        child: SizedBox(
          height: double.infinity,
        ),
      ),
      Container(
        height: 200,
        alignment: Alignment.bottomCenter,
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                  onPressed: () {
                    ruch(1);
                  },
                  child: const Text("+1", style: TextStyle(fontSize: 20))),
            ),
            Expanded(
              child: ElevatedButton(
                  onPressed: () {
                    ruch(2);
                  },
                  child: const Text("+2", style: TextStyle(fontSize: 20))),
            ),
            Expanded(
              child: ElevatedButton(
                  onPressed: () {
                    ruch(3);
                  },
                  child: const Text("+3", style: TextStyle(fontSize: 20))),
            ),
          ],
        ),
      ),
    ]));
  }
}
