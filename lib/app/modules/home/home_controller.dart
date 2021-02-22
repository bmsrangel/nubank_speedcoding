import 'package:flutter/material.dart';

class HomeController {
  final List<Map<String, dynamic>> _allIcons = [
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Pix",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Pagar",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Indicar amigos",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Transferir",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Depositar",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Empréstimos",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Cartão virtual",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Recarga de celular",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Ajustar limite",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Bloquear cartão",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Cobrar",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Doação",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Me ajuda",
    },
  ];

  List<Map<String, dynamic>> get allIcons => _allIcons;

  final ValueNotifier<bool> showContentNotifier = ValueNotifier<bool>(true);

  bool get showContent => showContentNotifier.value;

  void showHideContent() {
    showContentNotifier.value = !showContent;
  }
}
