import 'package:flutter/material.dart';
import 'package:news_app/Screens/Home_Screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Nexa'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}
