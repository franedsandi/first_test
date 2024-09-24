import 'package:flutter/material.dart';

class TextCont extends StatelessWidget {
  const TextCont(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 30, color: Colors.black),
    );
  }
}
