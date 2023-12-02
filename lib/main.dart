import 'package:flutter/material.dart';
import 'package:travel_wiki/home_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
      ),
    ),
  );
}
