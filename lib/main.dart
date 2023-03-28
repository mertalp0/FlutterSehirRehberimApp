import 'package:flutter/material.dart';
import 'sabitler.dart';
import 'sehir_listesi.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Sabitler.anaRenk)),
      debugShowCheckedModeBanner: false,
      title: 'Şehir Rehberim',
      home: Scaffold(
        backgroundColor: Sabitler.arkaplanrengi,
        appBar: AppBar(
          centerTitle: true,
          title:  const Text('Şehir Rehberim',style: Sabitler.textStyle2,),

        ),
        body: SehirListesi()
      ),
    );
  }
}
