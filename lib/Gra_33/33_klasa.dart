import 'package:flutter/material.dart';
import 'package:gierkownia/Gra_33/bot_33.dart';

class Klasa33 {
  int game_type = 0; //0-gra pomiedzy graczami 1-bot łatwy 2-bot trudny
  int Final_Number = 33; //final
  int Actual_Number = 0;
  bool is_started = false;
  Bot_33 bot=new Bot_33();
  Klasa33() {}
  void Start(int typGry, int numer) {
    if (numer > 33) {
      this.Final_Number = numer;
    } else {
      this.Final_Number = 33;
    }
    this.game_type = typGry;
    is_started = true;
  }

  void koniec() {
    game_type = 0;
    Actual_Number = 0;
    is_started = false;
    bot.reset();
  }

  void ruch_gracza(int num) {
    if (Actual_Number+num>Final_Number){

    }else if(Actual_Number+num==Final_Number){

    }else {
      if (game_type == 0) {} else if (game_type == 1 || game_type == 2) {
        Actual_Number=bot.Ruch(Actual_Number);

      }
    }
  }

  int wyswietl_liczbe() {
    return Actual_Number;
  }
}
