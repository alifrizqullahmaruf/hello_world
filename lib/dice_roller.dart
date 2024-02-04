import 'dart:math';
import 'package:flutter/material.dart';

final randomMizer = Random(); // buat variabel final random

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // Variabel untuk menyimpan hasil lemparan dadu saat ini
  var currrentDiceRoll = 2;

  // Fungsi untuk melempar dadu dan memperbarui tampilan
  void rollDice() {
    setState(() {
      // Menggunakan nilai acak dari 1 hingga 6 untuk merepresentasikan lemparan dadu
      currrentDiceRoll = randomMizer.nextInt(6) + 1; // menghasilkan nilai acak antara 1 hingga 6
    });
  }

  // Metode build yang menggambarkan tampilan widget DiceRoller
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min, //widget akan menyesuaikan diri sekecil mungkin dalam arah axis utama.
      children: [
        // Menampilkan gambar dadu sesuai dengan hasil lemparan saat ini
        Image.asset(
          'assets/images/dice-$currrentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        // Tombol untuk melempar dadu dengan teks "Roll Dice"
        TextButton(
          onPressed: rollDice, // Mengaitkan fungsi rollDice saat tombol ditekan
          style: TextButton.styleFrom(
            foregroundColor: Colors.white, // Warna teks tombol
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'), // Teks pada tombol
        )
      ],
    );
  }
}

