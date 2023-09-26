import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/rolldice.dart';

void main(){
  runApp(rollDiceApp());
}

class rollDiceApp extends StatelessWidget {
  const rollDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: rollDiceScreen(),
    );
  }
}