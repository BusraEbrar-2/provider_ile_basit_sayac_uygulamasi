import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/sayac_model.dart';
import 'screens/ana_ekran.dart';
 
void main() {
  runApp(
    ChangeNotifierProvider(
    // değişen verilerin otomatik olarak güncllenmesini sağlar 
      create: (context) => SayacModel(), // sayacmodeldeki veriler değştiğinde o veriyi dinleyen widgetlar otomatik güncellenir 
      child: MyApp(), // ChangeNotifierProvider'ın sağladığı veriyi kullanacak olan widget'ı belirtir.
    // SayacModel'i dinleyecek ve bu modeldeki değişikliklere göre yeniden güncellenecektir.
    
    ),
  );
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnaEkran(),
    );
  }
}