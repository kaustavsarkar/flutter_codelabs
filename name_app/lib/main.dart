import 'package:flutter/material.dart';
import 'package:name_app/startup_name_creator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CodeLabs',
      home: RandomWords(),
    );
  }
}
