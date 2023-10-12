import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//un boolean
final isDarkModeProvider = StateProvider((ref) => false);

// listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

//un entero
final selectedColorProvider = StateProvider((ref) => 0);

//provider mas complejo en base a una clase entera
//objeto de tipo AppTheme
//espera 2 cosas el primero es la clase que controla y el segundo el objeto
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
    (ref) => ThemeNotifier() //devolvemos la primera instancia
    );

//controlador o notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  //crear el objeto
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    //cambiamos el estado
    state = state.copyWith(
        isDarkMode: !state
            .isDarkMode); //en la copia le mandamos el opuesto del original
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
