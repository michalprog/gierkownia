import 'package:flutter/material.dart';
import 'package:gierkownia/Gra_33/bot33.dart';
import 'dart:math';

class Klasa33 {
  int game_type = 0; //0-gra pomiedzy graczami 1-bot łatwy 2-bot trudny
  int gmt = 0; //do orzruzniania typu gry
  int Final_Number = 33; //final
  int Actual_Number = 0;
  bool is_started = false;
  Bot33 bot = new Bot33();
  List<String> tpGry = [
    "1 vs 1 (gracz X)",
    "bot(łatwy)",
    "bot (trudny)",
    "1 vs 1 (gracz Y)",
    "bot(łatwy)",
    "bot (trudny)"
  ];

  Klasa33(int typGry, int numer) {
    start(typGry, numer);
  }
  void start(int typGry, int numer) {
    poprawka();
    gmt = typGry;
    if (numer > 33) {
      this.Final_Number = numer;
    } else {
      this.Final_Number = 33;
    }
    this.game_type = typGry;
    is_started = true;
    bot.wprowadz_dane(Final_Number, game_type,Actual_Number);
  }

  void koniec() {
     poprawka();
    is_started = false;
    bot.reset(Actual_Number);
    gmt=game_type;
  }

  void ruch_gracza(int num) {
    if (Actual_Number + num > Final_Number) {
    } else if (Actual_Number + num == Final_Number) {

      Actual_Number=Final_Number;
      if (gmt==1){
        gmt=4;
      }else if(gmt==2){
        gmt=5;
      }
    } else {
      if (game_type == 0) {
        Actual_Number = bot.Ruch(num);
        if(gmt==0){
          gmt=3;
        }else{
          gmt=0;
        }
      } else if (game_type == 1 || game_type == 2) {

          Actual_Number = bot.Ruch(num);


      }
    }
    if (Actual_Number == Final_Number) {

    }
  }

  int wyswietl_liczbe() {
    return Actual_Number;
  }

  String wynik_okienko() {
    String odpowiedz = "";
    switch (gmt) {
      case 0:
        odpowiedz = "wygrał gracz Y";
        break;
      case 1||2:
        odpowiedz="Gratuluje wygrałeś z botem";
        break;
      case 3:
        odpowiedz="wygrał gracz X";
        break;
      case 4:
        odpowiedz="przegrałeś z botem na pozomie łatwym";
        break;
      case 5:
        odpowiedz="przegrałeś z botem na pozomie trudnym";
        break;

    }
    return odpowiedz;
  }
  void poprawka() {//ma za zadanie zweryfikować czy gre da sie wygrać jesli nie to zmienic
    if (((Final_Number - 1) % 4) == 0) {
      Actual_Number = 1;
    }else{
      Actual_Number=0;
    }
  }
}
