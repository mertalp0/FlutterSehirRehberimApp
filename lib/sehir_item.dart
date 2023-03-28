import 'package:flutter/material.dart';

import 'model/sehir.dart';
import 'sabitler.dart';
import 'sehir_detay.dart';

class SehirItem extends StatelessWidget {
  final Sehir listelenenSehir;
  const SehirItem({required this.listelenenSehir, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2, color: Sabitler.anaRenk),
          borderRadius: BorderRadius.circular(20),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SehirDetay(secilenSehir: listelenenSehir)));
        },
        leading: const CircleAvatar(
            maxRadius: 25,
            backgroundColor: Sabitler.anaRenk,
            child: Icon(
              Icons.location_city,
              size: 35,
              color: Colors.white,
            )),
        title: Text(
          listelenenSehir.sehirAdi.toUpperCase(),
          style: Sabitler.textStyle,
        ),
        trailing: const Icon(Icons.arrow_forward_ios_outlined,
            size: 32, color: Sabitler.anaRenk),
        subtitle: Text(
          listelenenSehir.sehirBolgesi + " Bölgesi",
        ),
      ),
    );
  }
}
