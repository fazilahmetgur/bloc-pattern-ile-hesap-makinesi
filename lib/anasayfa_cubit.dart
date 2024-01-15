import 'package:bloc_pattern_kullanimi/matematik_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int> {
  AnasayfaCubit() : super(0);
  var mrepo = MatematikRepository();

  void toplamaYap(String alinanSayi1, String alinanSayi2) {
    emit(mrepo.toplamaIslemi(alinanSayi1, alinanSayi2));
  }

  void cikarmaYap(String alinanSayi1, String alinanSayi2) {
    emit(mrepo.cikarmaIslemi(alinanSayi1, alinanSayi2));
  }

  void carpmaYap(String alinanSayi1, String alinanSayi2) {
    emit(mrepo.carpmaIslemi(alinanSayi1, alinanSayi2));
  }

  void bolmeYap(String alinanSayi1, String alinanSayi2) {
    emit(mrepo.bolmeIslemi(alinanSayi1, alinanSayi2));
  }
}
