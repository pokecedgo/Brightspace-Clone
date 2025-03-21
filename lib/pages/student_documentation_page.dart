import 'package:flutter/material.dart';
import '../headers.dart';

class StudentDocumentationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainHeader(offset: 130.0),
      body: Column(
        children: [
          SecondaryHeader(
            offset: 130.0,
            onHomePressed: () {
              // Add your logic here for when the home button is pressed
              Navigator.of(context).pop();
            },
          ),
          Expanded(
            child: Center(
              child: Text("Student Documentation Page"),
            ),
          ),
        ],
      ),
    );
  }
}
