import 'package:bloc_pattern_kullanimi/anasayfa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;
  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Patern İle Hesap Makinesi"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder(builder: ((context, state) {
                return Text(
                  state.toString(),
                  style: const TextStyle(fontSize: 30),
                );
              })),
              TextField(
                controller: tfSayi1,
                decoration: const InputDecoration(helperText: "sayi 1"),
              ),
              TextField(
                controller: tfSayi2,
                decoration: const InputDecoration(hintText: "sayi 2"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: const Text("TOPLAMA"),
                    onPressed: () {
                      String alinanSayi1 = tfSayi1.text;
                      String alinanSayi2 = tfSayi2.text;
                      context
                          .read<AnasayfaCubit>()
                          .toplamaYap(alinanSayi1, alinanSayi2);
                    },
                  ),
                  ElevatedButton(
                    child: const Text("ÇARPMA"),
                    onPressed: () {
                      String alinanSayi1 = tfSayi1.text;
                      String alinanSayi2 = tfSayi2.text;
                      context
                          .read<AnasayfaCubit>()
                          .carpmaYap(alinanSayi1, alinanSayi2);
                    },
                  ),
                  ElevatedButton(
                    child: const Text("BOLME"),
                    onPressed: () {
                      String alinanSayi1 = tfSayi1.text;
                      String alinanSayi2 = tfSayi2.text;
                      context
                          .read<AnasayfaCubit>()
                          .bolmeYap(alinanSayi1, alinanSayi2);
                    },
                  ),
                  ElevatedButton(
                    child: const Text("CİKARMA"),
                    onPressed: () {
                      String alinanSayi1 = tfSayi1.text;
                      String alinanSayi2 = tfSayi2.text;
                      context
                          .read<AnasayfaCubit>()
                          .cikarmaYap(alinanSayi1, alinanSayi2);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
