import 'package:flutter/material.dart';
import 'package:gierkownia/Gra_33/33.dart';
import 'package:gierkownia/warcaby/Warcaby_Screen.dart';
import 'package:gierkownia/tictactoe/tictactoe.dart';
import 'package:gierkownia/szachy/Szachy_screen.dart';



class Glowna extends StatelessWidget {
  const Glowna({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          title: const Center(child: Text("gierkownia")),
        ),
        body: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 300,
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Gra33()),
                      );

                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Gra 33",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const KoloKrzyzyk()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "kólko i krzyżyk",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WarcabyScreen()),
                    );},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "warcaby",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SzachyScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Szachy",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                const Center(
                    child: Text("twórca: Michał Chojnacki",
                        style: TextStyle(
                            fontSize: 20,
                            color:Colors.deepPurple

                        ))),
              ],
            )));
  }
}
