import 'package:flutter/material.dart';
import 'package:hello_world/dice_roller.dart';
import 'package:hello_world/syled_text.dart';

// Membuat variabel
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// build a widget
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  // const GradientContainer({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
