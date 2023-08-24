import 'dart:math' show Random;
import 'package:flutter/material.dart';

//se usa statefull para poder manejar un estado
class AnimatedScreen extends StatefulWidget {
  static const name = 'animated-screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double heigth = 50;
  Color color = Colors.indigo;
  double borderRadius = 10.0;

  void changeShape() {
    //generamos los numero aleatorios
    final random = Random();

    width = random.nextInt(300) + 120;
    heigth = random.nextInt(300) + 120;
    borderRadius = random.nextInt(100) + 20;
    color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);

    setState(() {});
  }

//LOS CURVES SIRVEN PARA HACER ANIMACIONES

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated container')),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_outlined),
      ),
      body: Center(
          child: AnimatedContainer(
              width: width <= 0 ? 0 : width,
              curve: Curves.easeInCubic,
              height: heigth <= 0 ? 0 : heigth,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(
                      borderRadius <= 0 ? 0 : borderRadius)),
              duration: const Duration(milliseconds: 400))),
    );
  }
}
