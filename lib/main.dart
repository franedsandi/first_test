import 'package:flutter/material.dart';
import './gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 81, 18, 191), Color.fromARGB(255, 32, 13, 63)),
      ),
    ),
  );
}
