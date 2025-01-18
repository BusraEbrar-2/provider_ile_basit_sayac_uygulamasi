import 'package:flutter/material.dart';
 
class SayacModel extends ChangeNotifier {
  // 
  int _sayac = 0;
  int get sayac =>
      _sayac; // private tanımladık get ile devam 
 

  void sayacArttir() {
    _sayac++; // Sayacı bir arttırır.
    notifyListeners(); // değişkliği bekleyen widgetlara bildirir
  }
}