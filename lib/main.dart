import 'package:flutter/material.dart';
import 'package:gierkownia/glowna.dart';


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
