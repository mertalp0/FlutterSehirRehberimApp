
// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'data/strings.dart';
import 'model/sehir.dart';
import 'sehir_item.dart';

class SehirListesi extends StatelessWidget {
  List<Sehir> tumSehirler = [];
  SehirListesi({super.key}) {
    tumSehirler = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: tumSehirler.length,
        itemBuilder: (BuildContext context, int index) {
          return SehirItem(
            listelenenSehir: tumSehirler[index],
          );
        },
      ),
    );
  }
  List<Sehir> veriKaynaginiHazirla() {
    List<Sehir> geciciListe = [];
    for (int i = 0; i < Data.SEHIR_ADLARI.length; i++) {
      String sehirAdi = Data.SEHIR_ADLARI[i];
      String sehirBolgesi = Data.SEHIR_BOLGESI[i];
      String sehirOzellikleri = Data.SEHIR_GENEL_OZELLIKLER[i];
      Map gezilecekYerler = Data.SEHIR_GEZILECEK_YERLER[i];
      List<String> gezilecekYerlerListesi =
          Data.SEHIR_GEZILECEK_YERLER_LISTESI[i];
      geciciListe.add(Sehir(sehirAdi, sehirBolgesi, sehirOzellikleri,
          gezilecekYerlerListesi, gezilecekYerler));
    }
    return geciciListe;
  }
}
