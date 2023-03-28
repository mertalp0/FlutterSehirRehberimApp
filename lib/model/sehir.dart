class Sehir {
  final String _sehirAdi;
  final String _sehirBolgesi;
  final String _sehirOzelligi;
  final List _gezilecekYerlerListesi;
  final Map _sehirGezilecekYerler;

  get sehirAdi => _sehirAdi;

  get sehirBolgesi => _sehirBolgesi;

  get sehirOzelligi => _sehirOzelligi;

  get gezilecekYerlerListesi => _gezilecekYerlerListesi;
  get sehirGezilecekYerler => _sehirGezilecekYerler;

  Sehir(this._sehirAdi, this._sehirBolgesi, this._sehirOzelligi,
      this._gezilecekYerlerListesi, this._sehirGezilecekYerler);
  @override
  String toString() {
    return "sehir adı : $_sehirAdi";
  }
}
