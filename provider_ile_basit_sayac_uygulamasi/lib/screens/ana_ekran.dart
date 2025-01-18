import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/sayac_model.dart';
 
class AnaEkran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    final sayacModel = context.watch<SayacModel>();
     // mevcut durumunu al 
 // değişiklik olrsa yeniden çağrılır 
 // Sayacın değerine göre renk seçimi
    Color renk;
    if (sayacModel.sayac >= 10) {
      renk = Colors.red; // Sayac 10 ve üzeri ise kırmızı
    } else if (sayacModel.sayac >= 5) {
      renk = Colors.orange; // Sayac 5 ile 10 arasında ise turuncu
    } else {
      renk = Colors.green; // Sayac 5'ten küçükse yeşil
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Sayac Uygulaması'),
      ),
      body: Center(
        child: Text(
          'Sayac: ${sayacModel.sayac}',
/*sayacModel.sayac değerini ekranda "Sayac: 5" gibi bir formatta gösterir 
.*/ 

          style: TextStyle(fontSize: 24, color: renk),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context
            .read<SayacModel>() // sayacmodele erişilir
            .sayacArttir, // sayacArttir metodunu çağırır.
        child: Icon(Icons.add),
      ), 
    );
  }
} 
/*context.read<SayacModel>(): 
SayacModel'e erişir,
 ancak modeldeki değişikliklere dinleyici olma (reactive) yerine 
 sadece mevcut değeri alır 
 ve metod çağrısı yapılır. */