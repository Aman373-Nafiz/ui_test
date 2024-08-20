import 'package:flutter/material.dart';

import 'View/MainScreen.dart';

void main() {
  runApp(const SampleScreen());
}

class SampleScreen extends StatelessWidget {
  const SampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen()
    );
  }
}
