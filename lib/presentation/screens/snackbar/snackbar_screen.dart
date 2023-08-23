import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar-screen';

  const SnackBarScreen({super.key});
  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context)
        .clearSnackBars(); // linea de limpieza la creacion de los snacksbars
    final snackBar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context)
        .showSnackBar(snackBar); // mostramos el snackbar que se creo
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alertas snackbar y diálogos')),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showCustomSnackBar(context),
          label: const Text('Mostrar SnackBar'),
          icon: const Icon(Icons.panorama_fish_eye_rounded)),
    );
  }
}
