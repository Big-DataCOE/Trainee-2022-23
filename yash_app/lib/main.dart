import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Portfolio'),
        ),
        body: Text('Hi,I am Yash Varshney'),
      ),
    );
  }
}
