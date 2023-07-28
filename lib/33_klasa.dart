import 'package:flutter/material.dart';

class Klasa33 {
  int typ_gry = 0;
  int liczba_finalna = 33;
  int liczba_aktualna = 0;
  bool is_started = false;
  Klasa33() {}
  void Start(int typGry, int numer) {
    if (numer > 33) {
      this.liczba_finalna = numer;
    } else {
      this.liczba_finalna = 33;
    }
    this.typ_gry = typGry;
    is_started = true;
  }

  void koniec() {
    typ_gry = 0;
    liczba_aktualna = 0;
    is_started = false;
  }

  void ruch_gracza(int num) {
    if (typ_gry == 0) {
    } else if (typ_gry == 1) {
    } else if (typ_gry == 2) {}
  }

  int wyswietl_liczbe() {
    return liczba_aktualna;
  }
}
