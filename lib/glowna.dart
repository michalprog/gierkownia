import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:gierkownia/Gra_33/33.dart';
import 'package:gierkownia/warcaby/Warcaby_Screen.dart';
import 'package:gierkownia/tictactoe/tictactoe.dart';
import 'package:gierkownia/szachy/Szachy_screen.dart';

import 'Widgets/Button_Widget.dart';

class Glowna extends StatelessWidget {
  const Glowna({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Center(child: Text("gierkownia")),
          backgroundColor: Colors.greenAccent,
        ),
        body:  Center(
            child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const ButtonWidget(
              text: 'Gra 33',
              targetWidget: Gra33(),
            ),
            const ButtonWidget(
              text: 'kólko i krzyżyk',
              targetWidget: KoloKrzyzyk(),
            ),
            const ButtonWidget(
              text: 'warcaby',
              targetWidget: WarcabyScreen(),
            ),
            const ButtonWidget(
              text: 'Szachy',
              targetWidget: SzachyScreen(),
            ),
            Container(
              width: 300,
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: (){
                  exit(0);
                 },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child:  const Text(
                  "Opuść Aplikacje",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const Center(
                child: Text("twórca: Michał Chojnacki",
                    style: TextStyle(fontSize: 20, color: Colors.deepPurple))),
          ],
        )));
  }
}
