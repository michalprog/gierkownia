import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WindowTictactoe extends StatelessWidget {
 final String tekst;
 final VoidCallback tapaction;
  const WindowTictactoe({Key? key, this.tekst = " ",required this.tapaction }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
tapaction();
      },
      child: Container(
        alignment: Alignment.center,
        width: 100,
        height: 100,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            border: Border.all(color: Colors.blueAccent)
        ),


        child:Text(tekst),


      ),
    );
  }
}

