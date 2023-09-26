import 'dart:math';
import 'package:flutter/material.dart';

class rollDiceScreen extends StatefulWidget {
  const rollDiceScreen({super.key});

  @override
  State<rollDiceScreen> createState() => _rollDiceScreenState();
}

class _rollDiceScreenState extends State<rollDiceScreen> {
  int activeDiceFace = 6;
  List<String> diceImage = [
  'https://upload.wikimedia.org/wikipedia/commons/2/2c/Alea_1.png',
  'https://upload.wikimedia.org/wikipedia/commons/b/b8/Alea_2.png',
  'https://upload.wikimedia.org/wikipedia/commons/2/2f/Alea_3.png',
  'https://upload.wikimedia.org/wikipedia/commons/8/8d/Alea_4.png',
  'https://upload.wikimedia.org/wikipedia/commons/5/55/Alea_5.png',
  'https://upload.wikimedia.org/wikipedia/commons/f/f4/Alea_6.png',
  'https://th.bing.com/th/id/R.9da239e790083475fb5a2e8b6816fa5f?rik=ABIChsJvomoQDQ&riu=http%3a%2f%2fwww.rimwe.com%2f_Media%2fanimated-dice.gif&ehk=NC6%2bm4OX8konkYJdvimhWg%2b4ChU9yc76rQ%2btZ4bm2A4%3d&risl=&pid=ImgRaw&r=0'
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.pinkAccent.shade400,
            Colors.deepPurple.shade600,
            Colors.lightGreen.shade600,
            Colors.lightBlueAccent.shade200,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Roll Dice",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            
              Image.network(diceImage[activeDiceFace], 
              height: 100,),
              
              const SizedBox(
                height: 20,
              ),
              TextButton(onPressed: ()
              {
                var ranNum = Random().nextInt(6);
                setState(() {
                  activeDiceFace = ranNum;
                });
                print('button pressed');
              }, 
              child: const Text(
                "Roll!",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
              ),
            ],
          ),
        ),
      ),
    );
  }
}