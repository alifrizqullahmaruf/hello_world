import 'package:flutter/material.dart';

import 'package:hello_world/gradient_container.dart';

// buat rapih click shift + alt + f
//refactor = ctrl + shift + R
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        // ini nambahin background color
        // backgroundColor: Colors.blueGrey,
        body: const GradientContainer(),
      ),
    ),
  );
}
