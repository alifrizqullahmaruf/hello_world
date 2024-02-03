import 'package:flutter/material.dart';
import 'package:hello_world/dice_roller.dart';

// Membuat variabel
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// build a widget stateless unutk tampilan yang tidak berubah
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
      // mendekorasikan dalam container
      decoration: BoxDecoration(
        // Mendefinisaikan linear garisnya
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      // menempatkan anaknya widgetnya di tengah container
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
