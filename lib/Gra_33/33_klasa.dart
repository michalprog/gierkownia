import 'package:flutter/material.dart';
import 'package:gierkownia/Gra_33/bot_33.dart';

class Klasa33 {
  bool gameEnd=false;
  int game_type = 0; //0-gra pomiedzy graczami 1-bot łatwy 2-bot trudny
  int gmt=0;
  int Final_Number = 33; //final
  int Actual_Number = 0;
  bool is_started = false;
  Bot_33 bot=new Bot_33();
  List<String> tpGry = ["1 vs 1 (gracz X)", "bot(łatwy)", "bot (trudny)","1 vs 1 (gracz Y)","koniec gry"];

  Klasa33(int typGry, int numer)
  {
    start(typGry,numer);
  }
  void start(int typGry, int numer) {
    gmt=typGry;
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
      if (game_type == 0) {
        Actual_Number=bot.Ruch(num);
        print(Actual_Number);

      } else if (game_type == 1 || game_type == 2) {
        Actual_Number=bot.Ruch(Actual_Number);

      }
    }
    if (Actual_Number==Final_Number){

    }
  }

  int wyswietl_liczbe() {
    return Actual_Number;
  }
}
