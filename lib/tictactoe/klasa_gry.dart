import 'dart:io';

class TicTacToeClass{
  bool game_started=false;
  int game_type=0;//1-1vs1 ;2-bot łatwy; 3-bot trudny
  int who_plays=0; //0-nikt;1-x;2-o
  List <int> position=[1,2,1,2,1,2,1,2,1]; //0-""; 1-"x"; 2-"o"

  TicTacToeClass(){

  }

  void newgame(int tp)
  {
    position=[0,0,0,0,0,0,0,0,0];
    game_type=tp;
    game_started=true;
    who_plays=1;
  }
  void endgame(){
    game_type=0;
    game_started=false;
    who_plays=0;

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
void move(int pos){
    if(game_started){
      write_position(pos);
          if (game_type==1){

          }

    }

}
bool write_position(int pos){
    if(position[pos]==0){
      position[pos]=who_plays;
      return true;
    }else{
      return false;
    }

}//wypisuje pozycje jesli nie jest zajęta
  int isgameended(){
    if(position[0]==position[1]&&position[1]==position[2]&&position[0]!=0)
    {
      return position[0];
    }else if(position[3]==position[4]&&position[4]==position[5]&&position[3]!=0)
    {
      return position[3];
    }else if(position[6]==position[7]&&position[7]==position[8]&&position[6]!=0)
    {
      return position[6];
    }else if(position[0]==position[3]&&position[3]==position[6]&&position[3]!=0)
    {
      return position[3];
    }else if(position[1]==position[4]&&position[4]==position[7]&&position[1]!=0)
    {
      return position[1];
    }else if(position[2]==position[5]&&position[5]==position[8]&&position[2]!=0)
    {
      return position[2];
    }else if(position[0]==position[4]&&position[4]==position[8]&&position[0]!=0)
    {
      return position[0];
    }else if(position[2]==position[4]&&position[4]==position[6]&&position[2]!=0)
    {
      return position[2];
    }
return 0;
  }//sprawdza czy gra się skończyła jeśli nie to 0

}
