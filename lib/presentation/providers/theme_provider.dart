import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//un boolean
final isDarkModeProvider = StateProvider((ref) => false);

// listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

//un entero
final selectedColorProvider = StateProvider((ref) => 0);
