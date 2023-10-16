import 'dart:io';

class TicTacToeClass{
  bool game_started=false;
  int game_type=0;//1-1vs1 ;2-bot łatwy; 3-bot trudny
  List <int> position=[1,2,1,2,1,2,1,2,1]; //0-""; 1-"x"; 2-"o"

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
  String get_position(int pos){
    if (pos >= 0 && pos < position.length) {
      if( position[pos]==2){
        return "o";

      }else if(position[pos]==1){
        return"X";

      }
      else{
        return"";

      }
    }else{
      return "";
    }
  }
  List<int> get positions{
    return position;
  }




}
