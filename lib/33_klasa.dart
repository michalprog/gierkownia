class Klasa33{
int typ_gry=0;
int liczba_finalna=33;
int liczba_aktualna=0;
bool is_started=false;
  Klasa33()
  {

  }
void Start(int typGry,int numer)
{
  this.typ_gry=typGry;
  if (numer>33)
  {
  this.liczba_finalna=numer;
  }else{
  this.liczba_finalna=33;
  }
  is_started=true;
}
void koniec(){
    typ_gry=0;
    liczba_aktualna=0;
    is_started=false;
}
int wyswietl_liczbe(){
    return liczba_aktualna;
}




}