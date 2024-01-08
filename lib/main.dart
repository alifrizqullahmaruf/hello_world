import 'package:flutter/material.dart';

import 'package:hello_world/gradient_container.dart';

// buat rapih click shift + alt + f
//refactor = ctrl + shift + R
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // ini nambahin background color
        // backgroundColor: Colors.blueGrey,
        body: GradientContainer.purple(),
      ),
    ),
  );
}
