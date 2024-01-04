import 'package:flutter/material.dart';
import 'package:hello_world/syled_text.dart';


// build a widget
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  // const GradientContainer({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 38, 51, 232),
            Color.fromARGB(255, 85, 122, 223),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(
        child: StyledText()
      )
    );
  }
}
