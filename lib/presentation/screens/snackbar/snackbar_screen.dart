import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  // vamos a mostrar las licencias que usa el proyecto
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Pariatur aute irure nisi do eiusmod labore. Dolore laborum veniam adipisicing enim do quis veniam aute exercitation. Id amet non consectetur do.')
                  ]);
                },
                child: const Text('Licencias Usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar Dialogos')),
          ],
        ),
      ),
    );
  }

  openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,//obligamos a seleccionar una opcion
        builder: (context) => AlertDialog(
              title: const Text('Estas Seguro?'),
              content: const Text(
                  'Reprehenderit occaecat aliqua culpa consectetur ullamco aliqua aliquip pariatur. Ullamco Lorem cillum proident veniam non culpa in. Sit ullamco cupidatat reprehenderit minim proident dolor dolore amet qui anim ullamco duis. Id sunt ex non magna exercitation magna.'),
              actions: [
                TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
                FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar'))
              ],
            ));
  }
}
