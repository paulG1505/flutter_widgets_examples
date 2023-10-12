import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

void main() {
  runApp(const ProviderScope(
      //creamos llamado a riverpod en toda la app
      child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // final isDarkMode = ref.watch(isDarkModeProvider);
    // final int selectedColor = ref.watch(selectedColorProvider);
    final appTheme = ref.watch(themeNotifierProvider);//llamamos a la clase completa en lugar de las variables
    //se usa el go_router
    return MaterialApp.router(
      title: 'App Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
    );
  }
}
