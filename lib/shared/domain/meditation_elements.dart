import 'package:flutter/material.dart';

enum MeditationElements {
  visualisation(color: Color(0xFFB3E5FC), title: 'Visualisation'),
  breathing(color: Color.fromARGB(255, 248, 251, 187), title: 'Breathing'),
  bodyScan(color: Color(0xFFD1C4E9), title: 'Body Scan'),
  positivity(color: Color(0xFFC8E6C9), title: 'Positivität'),
  ;

  const MeditationElements({
    required this.title,
    required this.color,
  });

  final String title;
  final Color color;
}
