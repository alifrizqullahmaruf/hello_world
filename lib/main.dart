import 'package:flutter/material.dart';

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
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 38, 51, 232),
                Color.fromARGB(255, 85, 122, 223),
              ],
            ),
          ),
          child: const Center(
            child: Text('Alif'),
          ),
        ),
      ),
    ),
  );
}
