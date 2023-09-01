import 'package:flutter/material.dart';
import 'package:gierkownia/tictactoe/widget_tictactoe.dart';
class KoloKrzyzyk extends StatefulWidget {

  const KoloKrzyzyk({Key? key}) : super(key: key);

  @override
  State<KoloKrzyzyk> createState() => _KoloKrzyzykState();
}

class _KoloKrzyzykState extends State<KoloKrzyzyk> {
  String nazwa_gry="kółko i krzyżyk";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:Text("kółko i krzyżyk")),
      ),
      body:ListView(
        children: [
          Window_Tictactoe(
            tekst: "X",

          ),

        ],

      ),
    );
  }
}
