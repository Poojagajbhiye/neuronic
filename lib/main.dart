import 'package:flutter/material.dart';
import 'package:neuronic/business/brain_points_model.dart';
import 'package:provider/provider.dart';

import 'presentation/home/home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => BrainPoints(), child: const Neuronic()));
}

class Neuronic extends StatelessWidget {
  const Neuronic({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FutureBuilder(
          future: Provider.of<BrainPoints>(context, listen: false).init(),
          builder: (context, futureSnap) {
            if (futureSnap.hasData) {
              return const HomePage();
            } else {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          }),
    );
  }
}
