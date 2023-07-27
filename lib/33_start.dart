import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Start_33 extends StatefulWidget {
  const Start_33({Key? key}) : super(key: key);

  @override
  State<Start_33> createState() => _Start_33State();
}

class _Start_33State extends State<Start_33> {
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
            onPressed: () {},
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
            onPressed: () {},
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
            onPressed: () {},
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
