import 'package:flutter/material.dart';

import '../clinical_protocol/clinical_protocol_page.dart';
import '../learn/learn_page.dart';
import '../programs/programs_page.dart';
import 'home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    const HomeWidget(),
    const ProgramsPage(),
    const ClinicalProtocolPage(),
    const LearnPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets),
            label: 'Programs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.branding_watermark),
            label: 'Clinical Protocols',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logo_dev),
            label: 'Learn',
          ),
        ],
      ),
    );
  }
}
