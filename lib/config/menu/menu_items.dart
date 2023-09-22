import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Counter',
      subtitle: 'Counter con RiverPod',
      link: '/counter',
      icon: Icons.add),
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'Ejemplos de tarjetas',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicator',
      subtitle: 'Ejemplos de progress indicator',
      link: '/progress',
      icon: Icons.circle_rounded),
  MenuItem(
      title: 'Snack Bar',
      subtitle: 'Ejemplos de snackbar y diálogos',
      link: '/snackbar',
      icon: Icons.info_outline_rounded),
  MenuItem(
      title: 'Animated Container',
      subtitle: 'Ejemplo de una animacion ',
      link: '/animated',
      icon: Icons.play_arrow_rounded),
  MenuItem(
      title: 'Controles como radius y check',
      subtitle: 'UI Controlls',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Tutorial de la app',
      subtitle: 'Ejemplo de tutorial',
      link: '/tutorial',
      icon: Icons.accessible_forward_outlined),
  MenuItem(
      title: 'InfiniteScroll y Pull',
      subtitle: 'Listas Infinitas y pull to refresh',
      link: '/infinited',
      icon: Icons.screen_rotation_alt_outlined),
];
