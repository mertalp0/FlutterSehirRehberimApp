import 'package:flutter/material.dart';
import 'model/sehir.dart';
import 'sabitler.dart';

class SehirDetay extends StatefulWidget {
  final Sehir secilenSehir;
  const SehirDetay({required this.secilenSehir, super.key});

  @override
  State<SehirDetay> createState() => _SehirDetayState();
}

class _SehirDetayState extends State<SehirDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Sabitler.arkaplanrengi,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 300,
              pinned: true, // sabit sekilde kalması icin
              backgroundColor: Sabitler.anaRenk,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  widget.secilenSehir.sehirAdi.toUpperCase(),
                  style: Sabitler.textStyle2,
                ),
                background: Image.asset(
                  // ignore: prefer_interpolation_to_compose_strings
                  "${"images/" + widget.secilenSehir.sehirAdi}.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: const Color.fromARGB(255, 224, 224, 224),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, bottom: 16, left: 6, right: 6),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            widget.secilenSehir.sehirAdi.toUpperCase() +
                                " Hakkında",
                            style: Sabitler.textStyle5),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.secilenSehir.sehirOzelligi,
                          style: Sabitler.textStyle4,
                        ),
                      ]),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Scrollbar(
                    child: Container(
                      color: const Color.fromARGB(255, 224, 224, 224),
                      child: SingleChildScrollView(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            color: Sabitler.arkaplanrengi2,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        widget.secilenSehir
                                            .gezilecekYerlerListesi[index],
                                        style: Sabitler.textStyle),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                        widget.secilenSehir
                                                .sehirGezilecekYerler[
                                            widget.secilenSehir
                                                .gezilecekYerlerListesi[index]],
                                        style: Sabitler.textStyle3),
                                  ]),
                            ),
                          )),
                    ),
                  );
                },
                childCount: widget.secilenSehir.sehirGezilecekYerler.length,
              ),
            ),
          ],
        ));
  }
}
