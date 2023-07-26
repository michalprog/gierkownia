import 'package:flutter/material.dart';
import 'package:gierkownia/glowna.dart';
import 'package:gierkownia/33.dart';
import 'package:gierkownia/Warcaby_Screen.dart';
import 'package:gierkownia/tictactoe.dart';
import 'package:gierkownia/Szachy_screen.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ("gierkownia"),
      home:Glowna(),
    );
  }
}
