import 'package:flutter/material.dart';



class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.text, required this.targetWidget}): super(key: key) ;
final Widget targetWidget;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetWidget),
        );},


        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child:  Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
