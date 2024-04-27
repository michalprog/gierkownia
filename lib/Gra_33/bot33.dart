import 'dart:math';

class Bot33{
  int typ=0;
  int liczba_koncowa=0;
  int liczba_aktualna=0;


  void wprowadz_dane(int koncowa,int typ,int aktualna){
    this.liczba_aktualna=aktualna;
    this.liczba_koncowa=koncowa;
    this.typ=typ;

  }
  int Ruch(int aktualna) {
    //print("jestem tu");

    liczba_aktualna += aktualna;
    if (typ==1||typ==2) {

      if (liczba_koncowa <= liczba_aktualna + 4) {
        endgame();

      } else {
        if (typ == 1) {
          bot_latwy();
        } else if (typ == 2) {
          bot_trudny();
        }
      }
      return liczba_aktualna;
    }else{

      return liczba_aktualna;
    }
  }
  void bot_latwy() {
    int dodawana=Random().nextInt(3)+1;
    print (dodawana);
    liczba_aktualna+=dodawana;

  }
  void bot_trudny() {
    int dodana_wartosc=0;
    int rodzaj=(liczba_koncowa-1)%4;
    int typ_gracza=liczba_aktualna%4;
    if(rodzaj==typ_gracza){
      bot_latwy();
    }else{
      if(rodzaj<typ_gracza){
        dodana_wartosc=typ_gracza-rodzaj;
        dodana_wartosc=4-dodana_wartosc;
      }else{
        dodana_wartosc=rodzaj-typ_gracza;

      }
      liczba_aktualna+=dodana_wartosc;
    }

  }
  void endgame(){
    if (liczba_koncowa==liczba_aktualna+1){
      print(liczba_aktualna);
      liczba_aktualna+=1;
    }else if(liczba_koncowa==liczba_aktualna+2){
      print(liczba_aktualna);
      liczba_aktualna+=1;

    }else if(liczba_koncowa==liczba_aktualna+3){
      print(liczba_aktualna);
      liczba_aktualna+=2;

    }else if(liczba_koncowa==liczba_aktualna+4){
      print(liczba_aktualna);
      liczba_aktualna+=3;
    }


  }




  void reset(int aktualna){
    liczba_aktualna=aktualna;

  }


}
