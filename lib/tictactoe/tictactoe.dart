import 'package:flutter/material.dart';
import 'package:gierkownia/tictactoe/widget_tictactoe.dart';
import 'package:gierkownia/tictactoe/klasa_gry.dart';

class KoloKrzyzyk extends StatefulWidget {
  const KoloKrzyzyk({Key? key}) : super(key: key);

  @override
  State<KoloKrzyzyk> createState() => _KoloKrzyzykState();
}

class _KoloKrzyzykState extends State<KoloKrzyzyk> {
  String nazwa_gry = "kółko i krzyżyk";
  TicTacToeClass TicTactoegame = new TicTacToeClass();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("kółko i krzyżyk")),
      ),
      body: ListView(
        children: [
          Container(

              height: 600,
              width: 600,
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  Window_Tictactoe(
                    tapaction: tapaction,
                    tekst: TicTactoegame.get_position(0),
                  ),
                  Window_Tictactoe(
                    tapaction: tapaction,
                    tekst: TicTactoegame.get_position(1),
                  ),
                  Window_Tictactoe(
                    tapaction: tapaction,
                    tekst: TicTactoegame.get_position(2),
                  ),
                  Window_Tictactoe(
                    tapaction: tapaction,
                    tekst: TicTactoegame.get_position(3),
                  ),
                  Window_Tictactoe(
                    tapaction: tapaction,
                    tekst: TicTactoegame.get_position(4),
                  ),
                  Window_Tictactoe(
                    tapaction: tapaction,
                    tekst: TicTactoegame.get_position(5),
                  ),
                  Window_Tictactoe(
                    tapaction: tapaction,
                    tekst: TicTactoegame.get_position(6),
                  ),
                  Window_Tictactoe(
                    tapaction: tapaction,
                    tekst: TicTactoegame.get_position(7),
                  ),
                  Window_Tictactoe(
                    tapaction: tapaction,
                    tekst: TicTactoegame.get_position(8),
                  ),

                ],
              )),
        ],
      ),
    );
  }
  void tapaction(){
    setState(() {
      print("dzialam");

    });
  }
}
