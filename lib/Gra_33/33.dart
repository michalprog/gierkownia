import 'package:flutter/material.dart';

import 'package:gierkownia/Gra_33/33_start.dart';
import 'package:gierkownia/Gra_33/33_gra.dart';

class Gra33 extends StatefulWidget {
  const Gra33({Key? key}) : super(key: key);

  @override
  State<Gra33> createState() => _Gra33State();
}

class _Gra33State extends State<Gra33> {
  late Widget glowny;
  @override
  void initState() {
    super.initState();
    glowny = Start_33(
      switchScreen: switchScreen,
    );
  }
  void switchScreen_2() {}
  void switchScreen(int type, int number) {
    setState(() {
      glowny = Screen_gra(
        switchScreen: switchScreen_2,
        liczbakoncowa: number,
        typgry: type,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Gra 33")),
      ),
      body: glowny,

    );
  }
}
