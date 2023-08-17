import 'package:flutter/material.dart';

import 'package:gierkownia/Gra_33/33_start.dart';
import 'package:gierkownia/Gra_33/33_gra.dart';
import 'package:gierkownia/Gra_33/33_klasa.dart';

class Gra33 extends StatefulWidget {
  const Gra33({Key? key}) : super(key: key);

  @override
  State<Gra33> createState() => _Gra33State();
}

class _Gra33State extends State<Gra33> {
  Widget glowny = Start_33();
  void switchScreen() {
    if (glowny is Start_33) {
      glowny = Screen_gra(switchScreen: switchScreen);
    } else {
      glowny = Start_33(switchScreen: switchScreen);
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Gra 33")),
      ),
      body: glowny,
      bottomNavigationBar: Row
        (
        children: [
          Expanded(child: ElevatedButton(onPressed: () {},
              child: Text("+1", style: TextStyle(fontSize: 20))),),
          Expanded(child: ElevatedButton(onPressed: () {},
              child: Text("+2", style: TextStyle(fontSize: 20))),),
          Expanded(child: ElevatedButton(onPressed: () {},
              child: Text("+3", style: TextStyle(fontSize: 20))),),
        ],
      ),


    );
  }


}