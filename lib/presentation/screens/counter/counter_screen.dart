import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // el ref es para el riverpod
    final int clickCounter = ref.watch(counterProvider);
    final bool isDark = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(isDarkModeProvider.notifier).update((state) => !state);
              },
              icon: Icon(isDark
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined))
        ],
      ),
      body: Center(
        child: Text(
          'Valor: $clickCounter',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            //para cambiar el estado del provider primero lo llamamos al read y el .state lo cambia
            ref.read(counterProvider.notifier).state++;
            //otra forma de hacer
            //ref.read(counterProvider.notifier).update((state) => state+1);
          },
          child: const Icon(Icons.add)),
    );
  }
}
