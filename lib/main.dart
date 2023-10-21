import 'package:flutter/material.dart';

import 'presentation/home/home_page.dart';

void main() {
  runApp(const Neuronic());
}

class Neuronic extends StatelessWidget {
  const Neuronic({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
