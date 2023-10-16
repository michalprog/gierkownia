import 'dart:io';

class TicTacToeClass{
  bool game_started=false;
  int game_type=0;//1-1vs1 ;2-bot łatwy; 3-bot trudny
  List <int> position=[0,0,0,0,0,0,0,0,0];

  TicTacToeClass(){

  }

  void newgame(int tp)
  {
    position=[0,0,0,0,0,0,0,0,0];
    game_type=tp;
    game_started=true;
  }
  void endgame(){
    game_type=0;
    game_started=false;

  }
  int get_position(int pos){
    if (pos >= 0 && pos < position.length) {
      return position[pos];
    }else{
      return -1;
    }
  }
  List<int> get positions{
    return position;
  }




}
