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
                  WindowTictactoe(
                    tapaction: ()=>tapaction(0),
                    tekst: TicTactoegame.get_position(0),
                  ),
                  WindowTictactoe(
                    tapaction: ()=>tapaction(1),
                    tekst: TicTactoegame.get_position(1),
                  ),
                  WindowTictactoe(
                    tapaction: ()=>tapaction(2),
                    tekst: TicTactoegame.get_position(2),
                  ),
                  WindowTictactoe(
                    tapaction: ()=>tapaction(3),
                    tekst: TicTactoegame.get_position(3),
                  ),
                  WindowTictactoe(
                    tapaction: ()=>tapaction(4),
                    tekst: TicTactoegame.get_position(4),
                  ),
                  WindowTictactoe(
                    tapaction: ()=>tapaction(5),
                    tekst: TicTactoegame.get_position(5),
                  ),
                  WindowTictactoe(
                    tapaction: ()=>tapaction(6),
                    tekst: TicTactoegame.get_position(6),
                  ),
                  WindowTictactoe(
                    tapaction: ()=>tapaction(7),
                    tekst: TicTactoegame.get_position(7),
                  ),
                  WindowTictactoe(
                    tapaction: ()=>tapaction(8),
                    tekst: TicTactoegame.get_position(8),
                  ),

                ],
              )),

         Container(
           child: Row(
             children: [
               ElevatedButton(onPressed: (){startgame(1);}, child: Text("1 vs 1")),
               Spacer(),
               ElevatedButton(onPressed: (){startgame(2);}, child: Text("bot łatwy")),
               Spacer(),
               ElevatedButton(onPressed: (){startgame(3);}, child: Text("bot trudny")),
             ],
           ),
         )
        ],
      ),
    );
  }
  void tapaction(int position){
    if(TicTactoegame.game_started) {
      setState(() {
        TicTactoegame.move(position);
        print("dzialam");
      });
    }
  }
  void startgame(int rodzaj){

      setState(() {
        TicTactoegame.newgame(rodzaj);
      });

  }
}
