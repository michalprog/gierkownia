class Klasa33{
int typ_gry=0;
int liczba_finalna=33;
int liczba_aktualna=0;
bool is_started=false;
  Klasa33()
  {

  }
void Start(int typ_gry,int numer)
{
  this.typ_gry=typ_gry;
  this.liczba_finalna=numer;
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