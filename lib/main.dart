import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/discover_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final PageController _pageController = PageController();

  void _goToHome() {
    _pageController.jumpToPage(0); // Navigate to the first page (HomePage)
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: _pageController,
          children: [
            HomePage(), // HomePage as the first page
            DiscoverPage(), // Other pages
          ],
        ),
      ),
    );
  }
}
