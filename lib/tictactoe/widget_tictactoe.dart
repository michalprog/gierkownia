import 'package:flutter/cupertino.dart';

class Window_Tictactoe extends StatelessWidget {
 final String tekst;
  const Window_Tictactoe({Key? key, this.tekst = " ", }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child:Text(tekst)


    );
  }
}

