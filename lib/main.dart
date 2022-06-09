import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bacterial_growth/petri_dish.dart';
//rules
//It starts with one bacteria
//There are two events that can happen regularly (every 30 milliseconds): cell division and bacteria dying
//Bacteria can double itself using cell division. The probability for this is 0.1 %
//Bacteria can die. The probability for this is 0.5 %
//There can be no more than 1024 bacteria inside the simulation

void main() {
  runApp(const BacterialGrowthApp());
}

class BacterialGrowthApp extends StatelessWidget {
  const BacterialGrowthApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      title: 'Flutter Clutter Bacterial Growth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        backgroundColor: Colors.white,
        body: PetriDish(),
      ),
    );
  }
}
