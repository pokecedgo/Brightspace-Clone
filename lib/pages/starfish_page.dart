import 'package:flutter/material.dart';
import '../headers.dart';

class StarfishPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainHeader(offset: 130.0),
      body: Column(
        children: [
         SecondaryHeader(
            offset: 130.0,
            onHomePressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
          ),
          Expanded(
            child: Center(
              child: Text("Starfish Page"),
            ),
          ),
        ],
      ),
    );
  }
}
