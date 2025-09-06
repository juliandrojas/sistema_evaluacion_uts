import 'package:flutter/material.dart';
import 'package:sistema_evaluacion_uts/utils/colors.dart';

AppBar customAppBar(String title) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
    backgroundColor: colorVerdeInstitucional,
    elevation: 4,
  );
}
