import 'dart:math';
import 'package:flutter/material.dart';
import 'headers.dart';
import 'pages/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: MainHeader(offset: 130.0), // offset header1 Value
        body: Column(
          children: [
            SecondaryHeader(offset: 125.0), // offset subheader Value
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                children: [
                  HomePage(), // Use HomePage
                 
                  // Other pages
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
