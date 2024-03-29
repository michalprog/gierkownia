import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Start_33 extends StatefulWidget {
  final void Function(int,int) switchScreen;
  const Start_33({Key? key,required this.switchScreen}) : super(key: key);

  @override
  State<Start_33> createState() => _Start_33State();
}

class _Start_33State extends State<Start_33> {
  late TextEditingController gameNumber = TextEditingController();


  @override
  void dispose() {
    gameNumber.dispose();
    super.dispose();
  }
  void zmien_okno(int type){
    setState(() {
      int liczba = int.tryParse(gameNumber.text) ?? 33;
      print (liczba);
      widget.switchScreen(type,liczba);
    });

  }


  @override
  Widget build(BuildContext context) {
    return Center (child:Column(
      children:[
        const SizedBox(
          height: 80,
        ),
        Container(
          width: 300,
          padding: const EdgeInsets.all(5),
          child: ElevatedButton(
            onPressed:  ()=>zmien_okno(0),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              "gra dla 2 graczy",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          width: 300,
          padding: const EdgeInsets.all(5),
          child: ElevatedButton(
            onPressed:  ()=>zmien_okno(1),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              "gra z komputerem (łatwy)",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          width: 300,
          padding: const EdgeInsets.all(5),
          child: ElevatedButton(
            onPressed:  ()=>zmien_okno(2),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              "gra z komputerem (trudny)",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      Container(
          width: 300,
          padding: const EdgeInsets.all(5),
        child:TextFormField(
          decoration: const InputDecoration(labelText: 'podaj liczbę z zakresu 33-100'),
          //controller: gameNumber,
          initialValue: '33',
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^[1-9][0-9]?$|100$'),),
          ],
        )
      )

      ]
    ),
    );
  }


}
