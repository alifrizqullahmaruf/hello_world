import 'package:flutter/material.dart';

import 'package:hello_world/gradient_container.dart';

// buat rapih click shift + alt + f
//refactor = ctrl + shift + R

// Tempat utama menjalankan app
void main() {
  runApp(
    const MaterialApp(
      // Membuat debug icon hilang
      debugShowCheckedModeBanner: false,

      // Scaffold adalah widget dasar yang menyediakan dasar seperti AppBar, Drawer, dan lainnya.
      home: Scaffold(
        // ini nambahin background color
        // backgroundColor: Colors.blueGrey,

        // Pada bodynya akan menampilkan kelas GradientConstainer
        body: GradientContainer.purple(),
      ),
    ),
  );
}
