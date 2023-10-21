import 'package:flutter/material.dart';

class ClinicalProtocolPage extends StatelessWidget {
  const ClinicalProtocolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('QEEG Points 1'),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 350.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/brain.png'),
                  ),
                ),
              ),
              const Positioned(
                left: 140,
                top: 80,
                child: CircleAvatar(
                  child: Text('FP1'),
                ),
              ),
              const Positioned(
                right: 140,
                top: 80,
                child: CircleAvatar(
                  child: Text('FP2'),
                ),
              ),
              const Positioned(
                left: 60,
                top: 110,
                child: CircleAvatar(
                  child: Text('F7'),
                ),
              ),
              const Positioned(
                right: 60,
                top: 110,
                child: CircleAvatar(
                  child: Text('F8'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
