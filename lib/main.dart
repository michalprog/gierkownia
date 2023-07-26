import 'package:flutter/material.dart';

void main() {
  runApp(const Glowna());
}

class Glowna extends StatefulWidget {
  const Glowna({Key? key}) : super(key: key);

  @override
  State<Glowna> createState() => _GlownaState();
}

class _GlownaState extends State<Glowna> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ("gierkownia"),
      home: Scaffold(
          appBar: AppBar(
        title: Center(child: Text("gierkownia")),
      ),
      body: Center(
          child:Column(
            children: [

            ],

      )
      )
    ),
    );
  }
}
