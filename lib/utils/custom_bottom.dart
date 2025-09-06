// En tu archivo de estilos o en main.dart
import 'package:flutter/material.dart';
import 'colors.dart';

ButtonStyle customElevatedButtonStyle() {
  return ElevatedButton.styleFrom(
    foregroundColor: Colors.black, // Texto negro (buena lectura sobre amarillo)
    backgroundColor: colorVerdeInstitucional, // Fondo amarillo-verde UTS
    minimumSize: const Size(88, 48),
    padding: const EdgeInsets.symmetric(horizontal: 24),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8), // Bordes redondeados
    ),
    elevation: 3, // Sombra ligera
    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  );
}
