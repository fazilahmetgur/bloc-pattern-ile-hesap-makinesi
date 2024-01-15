class MatematikRepository {
  int toplamaIslemi(String alinanSayi1, String alinanSayi2) {
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  int cikarmaIslemi(String alinanSayi1, String alinanSayi2) {
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int fark = sayi1 - sayi2;
    return fark;
  }

  int carpmaIslemi(String alinanSayi1, String alinanSayi2) {
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int carpim = sayi1 * sayi2;
    return carpim;
  }

  int bolmeIslemi(String alinanSayi1, String alinanSayi2) {
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int bolum = sayi1 ~/ sayi2;
    return bolum;
  }
}
