import 'dart:math';
import 'package:flutter/material.dart';
import './text_in_box.dart';

final randomizer = Random();

/* statefull does not need build widget */
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceImage = 2;

  void rollDice() {
    setState(
      () {
        currentDiceImage = /* 222 Random() */ randomizer.nextInt(6) + 1;
      },
    );

    /* var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    var randomNumber = Random().nextInt(6) + 1;
    setState(
      () {
        activeDiceImage = 'assets/images/dice-$randomNumber.png';
      },
    );*/
  }

  @override
  build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
            'assets/images/dice-$currentDiceImage.png' /* activeDiceImage */,
            width: 200),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(10),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 30,
            ),
          ),
          child: const TextCont("Roll dice"),
        )
      ],
    );
  }
}
