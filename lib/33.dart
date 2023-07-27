import 'package:flutter/material.dart';

class Gra33 extends StatelessWidget {
  const Gra33({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:Text("Gra 33")),
      ),
      bottomNavigationBar:Row
        (
        children: [
          Expanded(child:ElevatedButton(onPressed: (){}, child: Text("+1",style: TextStyle(fontSize: 20))),),
          Expanded(child:ElevatedButton(onPressed: (){}, child: Text("+2",style: TextStyle(fontSize: 20))),),
          Expanded(child:ElevatedButton(onPressed: (){}, child: Text("+3",style: TextStyle(fontSize: 20))),),
        ],
      ),

      
    );
  }
}
