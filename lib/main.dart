import 'package:flutter/material.dart';
import 'package:news_app/Screens/NavBar.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Nexa'),
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    ),
  );
}
