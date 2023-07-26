import 'package:flutter/material.dart';
import 'package:gierkownia/33.dart';
import 'package:gierkownia/Warcaby_Screen.dart';
import 'package:gierkownia/tictactoe.dart';
import 'package:gierkownia/Szachy_screen.dart';

void main() {
  runApp(const Glowna());
}

class Glowna extends StatelessWidget {
  const Glowna({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ("gierkownia"),
      home: Scaffold(
          backgroundColor: Colors.yellowAccent,
          appBar: AppBar(
            title: Center(child: Text("gierkownia")),
          ),
          body: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Gra 33",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Gra33()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "kólko i krzyżyk",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "warcaby",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Szachy",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Center(
                      child: Text("twórca: Michał Chojnacki",
                          style: TextStyle(
                              fontSize: 20,
                              color:Colors.deepPurple

                          ))),
                ],
              ))),
    );
  }
}
