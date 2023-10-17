import 'dart:io';
import 'dart:math';

class bots{
List<int> pozycje=[];
  List<int> bot_latwy(List<int>poz){
    pozycje=poz;
    return pozycje;
  }
  List<int> bot_trudny(List<int>poz){
    pozycje=poz;
    return pozycje;
  }
  void bt_latwy(){
    int wylosowana=Random().nextInt(pozycje.length);
    while(pozycje[wylosowana]==0){


    }

  }






}