import 'dart:io';
import 'dart:math';

class Bots{
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
      wylosowana=Random().nextInt(pozycje.length);


    }
    pozycje[wylosowana]=2;

  }
void bt_trudny(){

}





}