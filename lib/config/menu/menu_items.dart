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
];
